import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../core/widgets/saved_movies_list.dart';
import '../../../../models/movie.dart';
import '../../../../providers/watchlist_provider.dart';
import '../providers/watchlist_movies_provider.dart';

/// Every movie the user has saved, swipe-to-remove (with an "Undo"
/// snackbar), backed by [watchlistProvider]'s Hive-persisted ids so the
/// list survives app restarts.
class WatchlistScreen extends ConsumerWidget {
  const WatchlistScreen({super.key});

  void _removeWithUndo(BuildContext context, WidgetRef ref, Movie movie) {
    ref.read(watchlistProvider.notifier).toggle(movie.id);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text('Removed "${movie.title}"'),
          action: SnackBarAction(
            label: 'UNDO',
            onPressed: () => ref.read(watchlistProvider.notifier).toggle(movie.id),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Movie>> moviesAsync = ref.watch(watchlistMoviesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          moviesAsync.maybeWhen(
            data: (List<Movie> movies) => movies.isEmpty
                ? AppStrings.watchlistTitle
                : '${AppStrings.watchlistTitle} (${movies.length})',
            orElse: () => AppStrings.watchlistTitle,
          ),
        ),
      ),
      body: SavedMoviesList(
        moviesAsync: moviesAsync,
        onRemove: (BuildContext ctx, Movie movie) => _removeWithUndo(ctx, ref, movie),
        onMovieTap: (Movie movie) => context.push(RouteNames.movieDetails, extra: movie),
        onRetry: () => ref.invalidate(watchlistMoviesProvider),
        emptyIcon: Icons.bookmark_border_rounded,
        emptyTitle: AppStrings.watchlistEmptyTitle,
        emptySubtitle: AppStrings.watchlistEmptySubtitle,
      ),
    );
  }
}
