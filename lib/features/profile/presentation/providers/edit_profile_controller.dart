import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../../../core/errors/failures.dart';
import '../../../../models/app_user.dart';
import '../../../../providers/auth_providers.dart';
import '../../../../repositories/auth_repository.dart';

/// Drives the Edit Profile screen's save button. Same idle → loading →
/// data/error shape as `SignInController`/`SignUpController` — the
/// resulting [AppUser] isn't held here, since [authStateProvider] already
/// picks up the change automatically (Firebase's `authStateChanges()`
/// re-emits after `updateDisplayName`/`updatePhotoURL` + `reload()`).
class EditProfileController extends StateNotifier<AsyncValue<void>> {
  EditProfileController(this._repo) : super(const AsyncData<void>(null));

  final AuthRepository _repo;

  Future<bool> submit({String? displayName, String? photoUrl}) async {
    state = const AsyncLoading<void>();
    final Either<Failure, AppUser> result = await _repo.updateProfile(
      displayName: displayName,
      photoUrl: photoUrl,
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
}

final StateNotifierProvider<EditProfileController, AsyncValue<void>> editProfileControllerProvider =
    StateNotifierProvider<EditProfileController, AsyncValue<void>>(
  (Ref ref) => EditProfileController(ref.watch(authRepositoryProvider)),
);

/// Drives the "Delete Account" flow — separate controller since it has
/// its own distinct confirmation and post-success navigation (back to
/// guest mode, not "stay on Profile").
class DeleteAccountController extends StateNotifier<AsyncValue<void>> {
  DeleteAccountController(this._repo) : super(const AsyncData<void>(null));

  final AuthRepository _repo;

  Future<bool> submit() async {
    state = const AsyncLoading<void>();
    final Either<Failure, void> result = await _repo.deleteAccount();
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

final StateNotifierProvider<DeleteAccountController, AsyncValue<void>>
    deleteAccountControllerProvider =
    StateNotifierProvider<DeleteAccountController, AsyncValue<void>>(
  (Ref ref) => DeleteAccountController(ref.watch(authRepositoryProvider)),
);
