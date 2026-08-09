import 'dart:collection';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../core/utils/app_logger.dart';

/// Stores one signed-in user's saved movie ids (watchlist *or*
/// favorites — [collectionName] picks which) in Firestore, one document
/// per movie: `users/{uid}/{collectionName}/{movieId}`.
///
/// A subcollection-per-item (rather than one document with an array
/// field) avoids Firestore's per-document write-contention and size
/// limits, and gives each saved movie a natural place to eventually
/// carry its own metadata (e.g. `addedAt`) without a schema migration.
class FirestoreSavedItemsRepository {
  FirestoreSavedItemsRepository({
    required this.uid,
    required this.collectionName,
    FirebaseFirestore? firestore,
  }) : _firestore = firestore ?? FirebaseFirestore.instance;

  final String uid;

  /// `'watchlist'` or `'favorites'`.
  final String collectionName;

  final FirebaseFirestore _firestore;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _firestore.collection('users').doc(uid).collection(collectionName);

  /// Ordered oldest → newest by `addedAt`, so callers wanting
  /// "most-recently-added first" just reverse it — a [LinkedHashSet]
  /// carries that iteration order through, unlike a plain `Set` built
  /// from an unordered query.
  Query<Map<String, dynamic>> get _orderedByAddedAt => _collection.orderBy('addedAt');

  LinkedHashSet<int> _idsFrom(QuerySnapshot<Map<String, dynamic>> snapshot) {
    return LinkedHashSet<int>.from(
      snapshot.docs.map((QueryDocumentSnapshot<dynamic> doc) => int.parse(doc.id)),
    );
  }

  /// A live stream of this user's saved ids — updates automatically when
  /// changed from *any* device signed into the same account.
  Stream<Set<int>> watchIds() {
    return _orderedByAddedAt.snapshots().map(_idsFrom);
  }

  Future<Set<int>> fetchIdsOnce() async {
    final QuerySnapshot<Map<String, dynamic>> snapshot = await _orderedByAddedAt.get();
    return _idsFrom(snapshot);
  }

  Future<void> addId(int movieId) async {
    try {
      await _collection.doc('$movieId').set(<String, dynamic>{
        'movieId': movieId,
        'addedAt': FieldValue.serverTimestamp(),
      });
    } catch (error, stackTrace) {
      // Firestore has its own offline queue — a failure here almost
      // always means "no connection right now, will retry automatically"
      // rather than something the user needs to see, so this logs
      // rather than surfacing an error: the local Hive write (the
      // source of truth for the UI) already succeeded.
      AppLogger.e('Failed to sync add($movieId) to $collectionName', error, stackTrace);
    }
  }

  Future<void> removeId(int movieId) async {
    try {
      await _collection.doc('$movieId').delete();
    } catch (error, stackTrace) {
      AppLogger.e('Failed to sync remove($movieId) from $collectionName', error, stackTrace);
    }
  }

  /// Uploads every id in [ids] that isn't already remotely present — used
  /// once, on first sign-in, to push a guest's local saves into their
  /// new account rather than losing them.
  Future<void> mergeUpload(Set<int> ids) async {
    if (ids.isEmpty) return;
    final WriteBatch batch = _firestore.batch();
    for (final int id in ids) {
      batch.set(_collection.doc('$id'), <String, dynamic>{
        'movieId': id,
        'addedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));
    }
    try {
      await batch.commit();
    } catch (error, stackTrace) {
      AppLogger.e('Failed to merge-upload $collectionName to Firestore', error, stackTrace);
    }
  }
}
