import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../models/app_user.dart';
import '../repositories/saved_items/firestore_saved_items_repository.dart';
import 'auth_providers.dart';

/// Shared implementation behind both `WatchlistNotifier` and
/// `FavoritesNotifier`.
///
/// **Always** backed by a local Hive box first — every read/write goes
/// through it, so the app works identically offline and for guests,
/// exactly as it did before cloud sync existed. The *only* thing signing
/// in adds is: local writes also get mirrored to Firestore, and a live
/// Firestore listener keeps this device's local copy in sync with any
/// other device signed into the same account.
///
/// On first sign-in, this device's local ids (e.g. saved while browsing
/// as a guest) are merged with whatever's already in the cloud for that
/// account, and the local-only ones are uploaded — so signing in never
/// silently loses a guest's saves.
///
/// Signing out clears the local cache (back to an empty guest state).
/// That's not just privacy — it's also what stops a second account
/// signing in on the same device from accidentally inheriting the first
/// account's saves as if they were unsynced local ones.
abstract class SyncedIdSetNotifier extends StateNotifier<Set<int>> {
  SyncedIdSetNotifier({
    required this.ref,
    required this.hiveBoxName,
    required this.firestoreCollectionName,
  }) : super(<int>{}) {
    _boxFuture = Hive.openBox<int>(hiveBoxName);
    _restoreLocal();

    final AppUser? initialUser = ref.read(authStateProvider).asData?.value;
    if (initialUser != null && !initialUser.isGuest) {
      _handleSignedIn(initialUser.uid);
    }

    ref.listen<AsyncValue<AppUser>>(authStateProvider, (
      AsyncValue<AppUser>? previous,
      AsyncValue<AppUser> next,
    ) {
      final AppUser? previousUser = previous?.asData?.value;
      final AppUser? nextUser = next.asData?.value;
      if (nextUser == null) return;

      final bool wasSignedIn = previousUser != null && !previousUser.isGuest;
      final bool isSignedIn = !nextUser.isGuest;

      if (isSignedIn && (!wasSignedIn || previousUser.uid != nextUser.uid)) {
        _handleSignedIn(nextUser.uid);
      } else if (!isSignedIn && wasSignedIn) {
        _handleSignedOut();
      }
    });
  }

  final Ref ref;
  final String hiveBoxName;
  final String firestoreCollectionName;

  late final Future<Box<int>> _boxFuture;
  StreamSubscription<Set<int>>? _cloudSubscription;
  FirestoreSavedItemsRepository? _cloudRepo;

  Future<void> _restoreLocal() async {
    final Box<int> box = await _boxFuture;
    // Only apply the locally-restored set if sign-in handling hasn't
    // already taken over — avoids a startup race where this finishes
    // after `_handleSignedIn` has already set `state` from Firestore.
    if (_cloudRepo == null) {
      state = box.keys.cast<int>().toSet();
    }
  }

  Future<void> _persistLocal(Set<int> ids) async {
    final Box<int> box = await _boxFuture;
    await box.clear();
    await box.putAll(<int, int>{for (final int id in ids) id: id});
  }

  Future<void> _handleSignedIn(String uid) async {
    // Set synchronously (before any `await`) so `_restoreLocal`'s guard
    // above sees this reliably even if both fire at app startup.
    final FirestoreSavedItemsRepository repo = FirestoreSavedItemsRepository(
      uid: uid,
      collectionName: firestoreCollectionName,
    );
    _cloudRepo = repo;

    await _cloudSubscription?.cancel();

    final Box<int> box = await _boxFuture;
    final Set<int> localIds = box.keys.cast<int>().toSet();
    final Set<int> remoteIds = await repo.fetchIdsOnce();
    final Set<int> merged = <int>{...localIds, ...remoteIds};
    final Set<int> localOnly = localIds.difference(remoteIds);

    await _persistLocal(merged);
    state = merged;

    if (localOnly.isNotEmpty) {
      await repo.mergeUpload(localOnly);
    }

    _cloudSubscription = repo.watchIds().listen((Set<int> remoteSet) {
      _persistLocal(remoteSet);
      state = remoteSet;
    });
  }

  void _handleSignedOut() {
    _cloudSubscription?.cancel();
    _cloudSubscription = null;
    _cloudRepo = null;
    // Clearing here (rather than leaving the last-synced data as a local
    // cache) matters for correctness, not just privacy: if a *different*
    // account signs in next on this same device, `_handleSignedIn` would
    // otherwise treat the previous account's leftover data as this
    // device's "local-only" saves and upload them into the new account.
    state = <int>{};
    _persistLocal(<int>{});
  }

  bool isSaved(int movieId) => state.contains(movieId);

  Future<void> toggle(int movieId) async {
    final Set<int> updated = Set<int>.of(state);
    final bool isRemoving = updated.remove(movieId);
    if (!isRemoving) updated.add(movieId);

    await _persistLocal(updated);
    state = updated;

    final FirestoreSavedItemsRepository? repo = _cloudRepo;
    if (repo != null) {
      if (isRemoving) {
        await repo.removeId(movieId);
      } else {
        await repo.addId(movieId);
      }
    }
  }

  @override
  void dispose() {
    _cloudSubscription?.cancel();
    super.dispose();
  }
}
