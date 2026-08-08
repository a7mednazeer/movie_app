import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as fb;

import '../core/errors/failures.dart';
import '../models/app_user.dart';
import 'auth_repository.dart';

/// [AuthRepository] backed by real Firebase Authentication.
///
/// Only constructed once Firebase has actually initialized successfully
/// (see `tryInitializeFirebase()` / `providers/auth_providers.dart`) —
/// this class assumes a working `firebase_auth` instance and never
/// checks for "is Firebase available" itself.
class FirebaseAuthRepository implements AuthRepository {
  FirebaseAuthRepository({fb.FirebaseAuth? firebaseAuth})
      : _auth = firebaseAuth ?? fb.FirebaseAuth.instance;

  final fb.FirebaseAuth _auth;

  @override
  bool get isFirebaseBacked => true;

  @override
  Stream<AppUser> authStateChanges() {
    return _auth.userChanges().map(
          (fb.User? user) => user == null ? AppUser.guest : _mapUser(user),
        );
  }

  @override
  AppUser get currentUser {
    final fb.User? user = _auth.currentUser;
    return user == null ? AppUser.guest : _mapUser(user);
  }

  AppUser _mapUser(fb.User user) {
    return AppUser(
      uid: user.uid,
      isGuest: false,
      email: user.email,
      displayName: user.displayName,
      photoUrl: user.photoURL,
      createdAt: user.metadata.creationTime,
    );
  }

  Future<Either<Failure, T>> _guard<T>(Future<T> Function() action) async {
    try {
      return Right<Failure, T>(await action());
    } on fb.FirebaseAuthException catch (e) {
      return Left<Failure, T>(AuthFailure(e.code, e.message ?? e.code));
    } catch (_) {
      return Left<Failure, T>(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, AppUser>> signInWithEmail({
    required String email,
    required String password,
  }) {
    return _guard(() async {
      final fb.UserCredential credential = await _auth.signInWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );
      return _mapUser(credential.user!);
    });
  }

  @override
  Future<Either<Failure, AppUser>> signUpWithEmail({
    required String email,
    required String password,
    required String displayName,
  }) {
    return _guard(() async {
      final fb.UserCredential credential = await _auth.createUserWithEmailAndPassword(
        email: email.trim(),
        password: password,
      );
      final fb.User user = credential.user!;
      if (displayName.trim().isNotEmpty) {
        await user.updateDisplayName(displayName.trim());
        await user.reload();
      }
      return _mapUser(_auth.currentUser ?? user);
    });
  }

  @override
  Future<Either<Failure, void>> sendPasswordResetEmail(String email) {
    return _guard(() => _auth.sendPasswordResetEmail(email: email.trim()));
  }

  @override
  Future<Either<Failure, void>> signOut() {
    return _guard(_auth.signOut);
  }

  @override
  Future<Either<Failure, AppUser>> updateProfile({String? displayName, String? photoUrl}) {
    return _guard(() async {
      final fb.User? user = _auth.currentUser;
      if (user == null) {
        throw fb.FirebaseAuthException(
          code: 'no-current-user',
          message: 'No signed-in user to update.',
        );
      }
      if (displayName != null) await user.updateDisplayName(displayName);
      if (photoUrl != null) await user.updatePhotoURL(photoUrl);
      await user.reload();
      return _mapUser(_auth.currentUser ?? user);
    });
  }

  @override
  Future<Either<Failure, void>> deleteAccount() {
    return _guard(() async {
      final fb.User? user = _auth.currentUser;
      if (user == null) return;
      await user.delete();
    });
  }
}
