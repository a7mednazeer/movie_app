import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/route_names.dart';
import '../../../../core/widgets/saved_movies_list.dart';
import '../../../../models/movie.dart';
import '../../../../providers/favorites_provider.dart';
import '../providers/favorites_movies_provider.dart';

/// Every movie the user has marked as a favorite — the counterpart to
/// Watchlist, built from the exact same shared-widget pattern.
class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key});

  void _removeWithUndo(BuildContext context, WidgetRef ref, Movie movie) {
    ref.read(favoritesProvider.notifier).toggle(movie.id);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text('Removed "${movie.title}" from favorites'),
          action: SnackBarAction(
            label: 'UNDO',
            onPressed: () => ref.read(favoritesProvider.notifier).toggle(movie.id),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Movie>> moviesAsync = ref.watch(favoriteMoviesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          moviesAsync.maybeWhen(
            data: (List<Movie> movies) =>
                movies.isEmpty ? 'Favorites' : 'Favorites (${movies.length})',
            orElse: () => 'Favorites',
          ),
        ),
      ),
      body: SavedMoviesList(
        moviesAsync: moviesAsync,
        onRemove: (BuildContext ctx, Movie movie) => _removeWithUndo(ctx, ref, movie),
        onMovieTap: (Movie movie) => context.push(RouteNames.movieDetails, extra: movie),
        onRetry: () => ref.invalidate(favoriteMoviesProvider),
        emptyIcon: Icons.favorite_border_rounded,
        emptyTitle: 'No favorites yet',
        emptySubtitle: 'Movies you mark as a favorite from Movie Details will show up here.',
      ),
    );
  }
}
