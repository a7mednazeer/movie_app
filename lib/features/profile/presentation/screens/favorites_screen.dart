import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/extensions/context_extensions.dart';
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
          content: Text(context.l10n.removedFromFavoritesSnack(movie.title)),
          action: SnackBarAction(
            label: context.l10n.undo,
            onPressed: () => ref.read(favoritesProvider.notifier).toggle(movie.id),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Movie>> moviesAsync = ref.watch(favoriteMoviesProvider);
    final int count = moviesAsync.maybeWhen(
      data: (List<Movie> movies) => movies.length,
      orElse: () => 0,
    );

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.favoritesTitleWithCount(count))),
      body: SavedMoviesList(
        moviesAsync: moviesAsync,
        onRemove: (BuildContext ctx, Movie movie) => _removeWithUndo(ctx, ref, movie),
        onMovieTap: (Movie movie) => context.push(RouteNames.movieDetails, extra: movie),
        onRetry: () => ref.invalidate(favoriteMoviesProvider),
        emptyIcon: Icons.favorite_border_rounded,
        emptyTitle: context.l10n.favoritesEmptyTitle,
        emptySubtitle: context.l10n.favoritesEmptySubtitle,
      ),
    );
  }
}
