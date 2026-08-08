// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// PLACEHOLDER Firebase configuration.
///
/// Every value below is a syntactically-valid but fake placeholder — the
/// app deliberately treats this as "Firebase not configured" (see
/// `core/firebase/firebase_bootstrap.dart`) and runs in guest-only mode
/// until you replace this file with your real project's config.
///
/// ## To connect a real Firebase project
///
/// 1. Install the FlutterFire CLI (one-time):
///    ```bash
///    dart pub global activate flutterfire_cli
///    ```
/// 2. From the project root, run:
///    ```bash
///    flutterfire configure
///    ```
///    This walks you through selecting/creating a Firebase project and
///    **overwrites this exact file** with your real, working
///    `DefaultFirebaseOptions` — matching the shape below, so nothing
///    else in the app needs to change.
/// 3. In the Firebase Console, enable **Authentication → Sign-in method
///    → Email/Password** (this app uses email/password auth).
///
/// Until you do this, [isPlaceholder] stays `true` and the app runs
/// entirely on local guest data, exactly like it does today.
class DefaultFirebaseOptions {
  static const bool isPlaceholder = false;

  static FirebaseOptions get currentPlatform {
    if (kIsWeb) return web;
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
      case TargetPlatform.linux:
      case TargetPlatform.fuchsia:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for this platform. '
          'Run `flutterfire configure` to add support.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAC9c165XQtvKj01Oow1cU4HIymG2ZiLY4',
    appId: '1:763731818912:web:placeholderappid',
    messagingSenderId: '763731818912',
    projectId: 'movie-app-d54e5',
    authDomain: 'movie-app-d54e5.firebaseapp.com',
    storageBucket: 'movie-app-d54e5.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAC9c165XQtvKj01Oow1cU4HIymG2ZiLY4',
    appId: '1:763731818912:android:139bad9544b5c16ec04cc5',
    messagingSenderId: '763731818912',
    projectId: 'movie-app-d54e5',
    storageBucket: 'movie-app-d54e5.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAC9c165XQtvKj01Oow1cU4HIymG2ZiLY4',
    appId: '1:763731818912:ios:placeholderappid',
    messagingSenderId: '763731818912',
    projectId: 'movie-app-d54e5',
    storageBucket: 'movie-app-d54e5.firebasestorage.app',
    iosBundleId: 'com.example.movieApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAC9c165XQtvKj01Oow1cU4HIymG2ZiLY4',
    appId: '1:763731818912:ios:placeholderappid',
    messagingSenderId: '763731818912',
    projectId: 'movie-app-d54e5',
    storageBucket: 'movie-app-d54e5.firebasestorage.app',
    iosBundleId: 'com.example.movieApp',
  );
}
