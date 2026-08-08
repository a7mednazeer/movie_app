import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/screens/sign_in_screen.dart';
import '../../features/auth/presentation/screens/sign_up_screen.dart';
import '../../features/browse/presentation/screens/browse_screen.dart';
import '../../features/browse/presentation/screens/genre_movies_screen.dart';
import '../../features/help_center/presentation/screens/help_center_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/movie_details/presentation/screens/movie_details_screen.dart';
import '../../features/notifications/presentation/screens/notification_settings_screen.dart';
import '../../features/profile/presentation/screens/edit_profile_screen.dart';
import '../../features/profile/presentation/screens/favorites_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../../features/search/presentation/screens/search_screen.dart';
import '../../features/settings/presentation/screens/settings_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';
import '../../features/watchlist/presentation/screens/watchlist_screen.dart';
import '../../models/movie.dart';
import '../constants/app_durations.dart';
import '../widgets/app_bottom_nav_shell.dart';
import 'route_names.dart';

/// Centralized navigation graph.
///
/// Home, Search, Browse, and Watchlist live inside a
/// [StatefulShellRoute] so each tab preserves its own scroll position and
/// navigation stack when the user switches tabs. Movie Details sits
/// outside the shell so it opens as a full-screen page over the bottom
/// nav, with a shared Hero transition from whichever poster was tapped.
final Provider<GoRouter> appRouterProvider = Provider<GoRouter>((Ref ref) {
  return GoRouter(
    initialLocation: RouteNames.splash,
    debugLogDiagnostics: false,
    routes: <RouteBase>[
      GoRoute(
        path: RouteNames.splash,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return const NoTransitionPage<void>(child: SplashScreen());
        },
      ),
      StatefulShellRoute.indexedStack(
        builder: (BuildContext context, GoRouterState state, StatefulNavigationShell shell) {
          return AppBottomNavShell(navigationShell: shell);
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: RouteNames.home,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return const NoTransitionPage<void>(child: HomeScreen());
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: RouteNames.search,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return const NoTransitionPage<void>(child: SearchScreen());
                },
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: RouteNames.browse,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return const NoTransitionPage<void>(child: BrowseScreen());
                },
                routes: <RouteBase>[
                  // Nested under /browse so it lives in the Browse tab's own
                  // stack — the back button returns to the genre grid with
                  // its scroll position intact. Home's category chips also
                  // deep-link straight here via `context.go(...)`.
                  GoRoute(
                    path: 'genre/:genreId',
                    pageBuilder: (BuildContext context, GoRouterState state) {
                      final int genreId =
                          int.parse(state.pathParameters['genreId']!);
                      final String genreName =
                          state.uri.queryParameters['name'] ?? 'Genre';
                      return _fadeThroughPage(
                        GenreMoviesScreen(genreId: genreId, genreName: genreName),
                        state,
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: <RouteBase>[
              GoRoute(
                path: RouteNames.watchlist,
                pageBuilder: (BuildContext context, GoRouterState state) {
                  return const NoTransitionPage<void>(child: WatchlistScreen());
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: RouteNames.movieDetails,
        pageBuilder: (BuildContext context, GoRouterState state) {
          final Movie movie = state.extra! as Movie;
          return _fadeThroughPage(MovieDetailsScreen(movie: movie), state);
        },
      ),
      GoRoute(
        path: RouteNames.signIn,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return _fadeThroughPage(const SignInScreen(), state);
        },
      ),
      GoRoute(
        path: RouteNames.signUp,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return _fadeThroughPage(const SignUpScreen(), state);
        },
      ),
      GoRoute(
        path: RouteNames.editProfile,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return _fadeThroughPage(const EditProfileScreen(), state);
        },
      ),
      GoRoute(
        path: RouteNames.profile,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return _fadeThroughPage(const ProfileScreen(), state);
        },
        routes: <RouteBase>[
          GoRoute(
            path: 'favorites',
            pageBuilder: (BuildContext context, GoRouterState state) {
              return _fadeThroughPage(const FavoritesScreen(), state);
            },
          ),
        ],
      ),
      GoRoute(
        path: RouteNames.settings,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return _fadeThroughPage(const SettingsScreen(), state);
        },
      ),
      GoRoute(
        path: RouteNames.notificationSettings,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return _fadeThroughPage(const NotificationSettingsScreen(), state);
        },
      ),
      GoRoute(
        path: RouteNames.helpCenter,
        pageBuilder: (BuildContext context, GoRouterState state) {
          return _fadeThroughPage(const HelpCenterScreen(), state);
        },
      ),
    ],
  );
});

/// Shared page transition: a subtle fade + slight scale, used for
/// non-shell routes (like Movie Details) so navigation feels premium and
/// consistent.
CustomTransitionPage<void> _fadeThroughPage(Widget child, GoRouterState state) {
  return CustomTransitionPage<void>(
    key: state.pageKey,
    transitionDuration: AppDurations.pageTransition,
    reverseTransitionDuration: AppDurations.pageTransition,
    child: child,
    transitionsBuilder: (
      BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child,
    ) {
      final CurvedAnimation curved = CurvedAnimation(
        parent: animation,
        curve: AppDurations.curveDefault,
      );
      return FadeTransition(
        opacity: curved,
        child: ScaleTransition(
          scale: Tween<double>(begin: 0.98, end: 1).animate(curved),
          child: child,
        ),
      );
    },
  );
}
