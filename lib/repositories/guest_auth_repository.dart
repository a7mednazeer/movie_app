import 'dart:async';

import 'package:dartz/dartz.dart';

import '../core/errors/failures.dart';
import '../models/app_user.dart';
import 'auth_repository.dart';

/// [AuthRepository] used for development when Firebase isn't configured.
class GuestAuthRepository implements AuthRepository {
  final _controller = StreamController<AppUser>.broadcast();
  AppUser _currentUser = AppUser.guest;

  @override
  bool get isFirebaseBacked => false;

  @override
  Stream<AppUser> authStateChanges() => _controller.stream.startWith(_currentUser);

  @override
  AppUser get currentUser => _currentUser;

  void _updateUser(AppUser user) {
    _currentUser = user;
    _controller.add(user);
  }

  @override
  Future<Either<Failure, AppUser>> signInWithEmail({
    required String email,
    required String password,
  }) async {
    final user = AppUser(
      uid: 'fake-uid',
      isGuest: false,
      email: email,
      displayName: email.split('@').first,
    );
    _updateUser(user);
    return Right(user);
  }

  @override
  Future<Either<Failure, AppUser>> signUpWithEmail({
    required String email,
    required String password,
    required String displayName,
  }) async {
    final user = AppUser(
      uid: 'fake-uid',
      isGuest: false,
      email: email,
      displayName: displayName,
    );
    _updateUser(user);
    return Right(user);
  }

  @override
  Future<Either<Failure, void>> sendPasswordResetEmail(String email) async {
    return const Right(null);
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    _updateUser(AppUser.guest);
    return const Right(null);
  }

  @override
  Future<Either<Failure, AppUser>> updateProfile({String? displayName, String? photoUrl}) async {
    if (_currentUser.isGuest) {
      return Left(const AuthFailure('no-user', 'Not signed in.'));
    }
    final updated = _currentUser.copyWith(displayName: displayName, photoUrl: photoUrl);
    _updateUser(updated);
    return Right(updated);
  }

  @override
  Future<Either<Failure, void>> deleteAccount() async {
    _updateUser(AppUser.guest);
    return const Right(null);
  }
}

extension on Stream<AppUser> {
  Stream<AppUser> startWith(AppUser value) async* {
    yield value;
    yield* this;
  }
}
