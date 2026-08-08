import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../../../core/errors/failures.dart';
import '../../../../models/app_user.dart';
import '../../../../providers/auth_providers.dart';
import '../../../../repositories/auth_repository.dart';

/// Drives the Sign In screen's submit button: idle → loading →
/// data (success) / error, independent of the reactive
/// [authStateProvider] stream so the form can show its own inline error
/// without waiting on a stream re-emission.
class SignInController extends StateNotifier<AsyncValue<void>> {
  SignInController(this._repo) : super(const AsyncData<void>(null));

  final AuthRepository _repo;

  Future<bool> submit({required String email, required String password}) async {
    state = const AsyncLoading<void>();
    final Either<Failure, AppUser> result = await _repo.signInWithEmail(
      email: email,
      password: password,
    );
    return result.fold(
      (Failure failure) {
        state = AsyncError<void>(failure, StackTrace.current);
        return false;
      },
      (AppUser user) {
        state = const AsyncData<void>(null);
        return true;
      },
    );
  }

  void clearError() {
    if (state.hasError) state = const AsyncData<void>(null);
  }
}

final StateNotifierProvider<SignInController, AsyncValue<void>> signInControllerProvider =
    StateNotifierProvider<SignInController, AsyncValue<void>>(
  (Ref ref) => SignInController(ref.watch(authRepositoryProvider)),
);

/// Same shape as [SignInController], for the Sign Up screen.
class SignUpController extends StateNotifier<AsyncValue<void>> {
  SignUpController(this._repo) : super(const AsyncData<void>(null));

  final AuthRepository _repo;

  Future<bool> submit({
    required String email,
    required String password,
    required String displayName,
  }) async {
    state = const AsyncLoading<void>();
    final Either<Failure, AppUser> result = await _repo.signUpWithEmail(
      email: email,
      password: password,
      displayName: displayName,
    );
    return result.fold(
      (Failure failure) {
        state = AsyncError<void>(failure, StackTrace.current);
        return false;
      },
      (AppUser user) {
        state = const AsyncData<void>(null);
        return true;
      },
    );
  }

  void clearError() {
    if (state.hasError) state = const AsyncData<void>(null);
  }
}

final StateNotifierProvider<SignUpController, AsyncValue<void>> signUpControllerProvider =
    StateNotifierProvider<SignUpController, AsyncValue<void>>(
  (Ref ref) => SignUpController(ref.watch(authRepositoryProvider)),
);

/// Drives the "Forgot password" flow — its own tiny controller since it
/// has a distinct success state (an email was sent, not a signed-in
/// user) that the Sign In screen surfaces differently.
class PasswordResetController extends StateNotifier<AsyncValue<void>> {
  PasswordResetController(this._repo) : super(const AsyncData<void>(null));

  final AuthRepository _repo;

  Future<bool> submit(String email) async {
    state = const AsyncLoading<void>();
    final Either<Failure, void> result = await _repo.sendPasswordResetEmail(email);
    return result.fold(
      (Failure failure) {
        state = AsyncError<void>(failure, StackTrace.current);
        return false;
      },
      (_) {
        state = const AsyncData<void>(null);
        return true;
      },
    );
  }
}

final StateNotifierProvider<PasswordResetController, AsyncValue<void>>
    passwordResetControllerProvider =
    StateNotifierProvider<PasswordResetController, AsyncValue<void>>(
  (Ref ref) => PasswordResetController(ref.watch(authRepositoryProvider)),
);
