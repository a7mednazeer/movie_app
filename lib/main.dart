import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'core/routes/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/theme/theme_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Sets up Hive's on-device storage location — required once, before any
  // `Hive.openBox(...)` call (see `watchlist_provider.dart` /
  // `favorites_provider.dart`).
  await Hive.initFlutter();
  runApp(const ProviderScope(child: MovieApp()));
}

/// Root application widget.
///
/// Wires together the centralized [AppTheme] system, the persisted
/// [themeModeProvider], and the [appRouterProvider] navigation graph.
class MovieApp extends ConsumerWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeMode themeMode = ref.watch(themeModeProvider);
    final GoRouter router = ref.watch(appRouterProvider);

    return MaterialApp.router(
      title: 'Movies',
      debugShowCheckedModeBanner: false,
      themeMode: themeMode,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      routerConfig: router,
    );
  }
}
