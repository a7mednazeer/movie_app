import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/app_user.dart';
import '../repositories/auth_repository.dart';
import '../repositories/auth_repository_impl.dart';
import '../repositories/guest_auth_repository.dart';

/// Whether `Firebase.initializeApp()` actually succeeded at startup.
///
/// Overridden once, in `main.dart`, with the real result of
/// `tryInitializeFirebase()` — every other provider on this page reads
/// through this one rather than checking Firebase directly, so the
/// "is Firebase available" decision is made in exactly one place.
final Provider<bool> firebaseAvailableProvider = Provider<bool>((Ref ref) {
  throw UnimplementedError(
    'firebaseAvailableProvider must be overridden in main.dart with the '
    'real result of tryInitializeFirebase() before runApp().',
  );
});

/// The app-wide [AuthRepository]. Real Firebase-backed implementation
/// when available, a local-only guest fallback otherwise — see
/// `GuestAuthRepository`'s doc comment for exactly what that means.
final Provider<AuthRepository> authRepositoryProvider = Provider<AuthRepository>((Ref ref) {
  final bool firebaseAvailable = ref.watch(firebaseAvailableProvider);
  return firebaseAvailable ? FirebaseAuthRepository() : GuestAuthRepository();
});

/// Reactive current-user state — Home's profile icon, Profile itself,
/// and anything else that needs to know "who's signed in right now"
/// watches this instead of calling `authRepository.currentUser` directly,
/// so the UI updates immediately on sign-in/sign-out.
final StreamProvider<AppUser> authStateProvider = StreamProvider<AppUser>((Ref ref) {
  final AuthRepository repo = ref.watch(authRepositoryProvider);
  return repo.authStateChanges();
});
