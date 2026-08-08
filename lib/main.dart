import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/firebase/firebase_bootstrap.dart';
import 'core/routes/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_provider.dart';
import 'features/settings/presentation/providers/language_provider.dart';
import 'l10n/generated/app_localizations.dart';
import 'providers/auth_providers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Sets up Hive's on-device storage location — required once, before any
  // `Hive.openBox(...)` call (see `watchlist_provider.dart` /
  // `favorites_provider.dart`).
  await Hive.initFlutter();

  // Attempts real Firebase initialization; returns false (never throws)
  // if it's not configured yet, in which case the app runs entirely on
  // the local guest identity — see `firebase_bootstrap.dart` and
  // `providers/auth_providers.dart`.
  final bool firebaseAvailable = await tryInitializeFirebase();

  runApp(
    ProviderScope(
      overrides: <Override>[
        firebaseAvailableProvider.overrideWithValue(firebaseAvailable),
      ],
      child: const MovieApp(),
    ),
  );
}

/// Root application widget.
///
/// Wires together the centralized [AppTheme] system, the persisted
/// [themeModeProvider], the persisted [languageProvider], and the
/// [appRouterProvider] navigation graph.
class MovieApp extends ConsumerWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeMode themeMode = ref.watch(themeModeProvider);
    final Locale? locale = ref.watch(languageProvider);
    final GoRouter router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'Movies',
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: router,

      // `locale: null` (the default, "follow the system") is intentional —
      // Flutter then runs `localeResolutionCallback` below against the
      // device's preferred languages itself.
      locale: locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (Locale? deviceLocale, Iterable<Locale> supported) {
        if (deviceLocale == null) return supported.first;
        for (final Locale candidate in supported) {
          if (candidate.languageCode == deviceLocale.languageCode) {
            return candidate;
          }
        }
        // Device language isn't one of our 13 translations — English is
        // the most broadly understood fallback rather than silently
        // picking whatever happens to be first in the list.
        return const Locale('en');
      },
    );
  }
}
