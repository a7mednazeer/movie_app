import 'package:firebase_core/firebase_core.dart';

import '../../firebase_options.dart';
import '../utils/app_logger.dart';

/// Tries to initialize Firebase for real.
///
/// Returns `false` (without throwing) whenever Firebase isn't usable —
/// whether that's because `firebase_options.dart` is still the shipped
/// placeholder, or because `Firebase.initializeApp()` itself fails for
/// any other reason (misconfigured project, no native config files on
/// this platform, etc.). Callers use the result to decide between the
/// real `FirebaseAuthRepository` and the local-only `GuestAuthRepository`
/// — the app is fully functional either way, exactly like the TMDB
/// API/dummy-data split.
Future<bool> tryInitializeFirebase() async {
  if (DefaultFirebaseOptions.isPlaceholder) {
    AppLogger.i(
      'Firebase not configured (firebase_options.dart is still the '
      'placeholder) — running in guest-only mode. Run `flutterfire '
      'configure` to enable real sign-in.',
    );
    return false;
  }

  try {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    return true;
  } catch (error, stackTrace) {
    AppLogger.e('Firebase.initializeApp() failed — falling back to guest-only mode.', error, stackTrace);
    return false;
  }
}
