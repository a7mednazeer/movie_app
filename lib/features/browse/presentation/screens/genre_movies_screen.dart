import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/asset_paths.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../core/widgets/app_error_view.dart';
import '../../../../core/widgets/movie_poster_card.dart';
import '../../../../core/widgets/shimmer_box.dart';
import '../../../../models/movie.dart';
import '../../../../providers/watchlist_provider.dart';
import '../providers/browse_providers.dart';

/// A poster grid of every movie in a single genre — reached either from
/// tapping a genre card in Browse, or directly from a category chip on
/// Home.
class GenreMoviesScreen extends ConsumerWidget {
  const GenreMoviesScreen({required this.genreId, required this.genreName, super.key});

  final int genreId;
  final String genreName;

  static const int _crossAxisCount = 3;
  static const double _spacing = AppDimens.space12;

  /// Extra vertical space `MoviePosterCard` uses below the poster image
  /// for its title/year text — kept in sync here so the grid's fixed
  /// cell height matches the card's actual rendered height exactly.
  /// Increased for Arabic and other tall-font language support.
  static const double _textBlockHeight = 8 + 22 + 2 + 18;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Movie>> moviesAsync = ref.watch(genreMoviesProvider(genreId));
    final Set<int> savedIds = ref.watch(watchlistProvider);

    return Scaffold(
      appBar: AppBar(title: Text(genreName)),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          final double cellWidth = (constraints.maxWidth -
                  AppDimens.screenPaddingHorizontal * 2 -
                  _spacing * (_crossAxisCount - 1)) /
              _crossAxisCount;
          final double cellHeight =
              cellWidth / AppDimens.posterCardAspectRatio + _textBlockHeight;

          return moviesAsync.when(
            loading: () => _buildShimmerGrid(cellHeight),
            error: (Object error, StackTrace stackTrace) => Center(
              child: Padding(
                padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
                child: InlineErrorView(
                  error: error,
                  onRetry: () => ref.invalidate(genreMoviesProvider(genreId)),
                ),
              ),
            ),
            data: (List<Movie> movies) {
              if (movies.isEmpty) {
                return FullScreenStateView(
                  icon: Icons.movie_filter_outlined,
                  illustrationAsset: AssetPaths.noResultsIllustration,
                  title: context.l10n.noMoviesInGenre,
                  subtitle: context.l10n.checkBackSoonGenre,
                );
              }
              return GridView.builder(
                padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: _crossAxisCount,
                  crossAxisSpacing: _spacing,
                  mainAxisSpacing: AppDimens.space16,
                  mainAxisExtent: cellHeight,
                ),
                itemCount: movies.length,
                itemBuilder: (BuildContext context, int index) {
                  final Movie movie = movies[index];
                  return MoviePosterCard(
                    movie: movie,
                    width: cellWidth,
                    isSaved: savedIds.contains(movie.id),
                    onTap: () => context.push(RouteNames.movieDetails, extra: movie),
                    onToggleSaved: (int id) => ref.read(watchlistProvider.notifier).toggle(id),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildShimmerGrid(double cellHeight) {
    return GridView.builder(
      padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: _crossAxisCount,
        crossAxisSpacing: _spacing,
        mainAxisSpacing: AppDimens.space16,
        mainAxisExtent: cellHeight,
      ),
      itemCount: 9,
      itemBuilder: (BuildContext context, int index) {
        return const ShimmerBox(
          width: double.infinity,
          height: double.infinity,
          borderRadius: AppDimens.radiusMd,
        );
      },
    );
  }
}
