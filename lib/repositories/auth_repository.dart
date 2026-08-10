import 'package:dartz/dartz.dart';

import '../core/errors/failures.dart';
import '../models/app_user.dart';

/// Contract for everything account-related.
///
/// Presentation-layer code depends only on this abstraction, never on
/// `FirebaseAuthRepository` or `GuestAuthRepository` directly — which is
/// what lets the app run entirely on the local guest identity when
/// Firebase isn't configured, and upgrade to real accounts the moment it
/// is, with no other code changes (see `providers/auth_providers.dart`
/// for how the choice is made).
abstract class AuthRepository {
  /// Emits the current [AppUser] whenever auth state changes (sign in,
  /// sign out, token refresh). Never emits `null` — signed-out state is
  /// represented as `AppUser.guest`, since the app always has *someone*
  /// to show a Profile for.
  Stream<AppUser> authStateChanges();

  AppUser get currentUser;

  bool get isFirebaseBacked;

  Future<Either<Failure, AppUser>> signInWithEmail({
    required String email,
    required String password,
  });

  Future<Either<Failure, AppUser>> signUpWithEmail({
    required String email,
    required String password,
    required String displayName,
  });

  Future<Either<Failure, void>> sendPasswordResetEmail(String email);

  Future<Either<Failure, void>> signOut();

  /// `null` for either parameter means "leave unchanged"; an empty
  /// string for [photoUrl] means "clear the photo" (mapped to Firebase's
  /// own null-clears-it `updatePhotoURL` call internally — the caller
  /// never needs to know that distinction).
  Future<Either<Failure, AppUser>> updateProfile({String? displayName, String? photoUrl});

  Future<Either<Failure, void>> deleteAccount();
}
