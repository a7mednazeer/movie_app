import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/movie.dart';
import '../../providers/watchlist_provider.dart';
import '../constants/app_dimens.dart';
import 'app_error_view.dart';
import 'movie_poster_card.dart';
import 'section_header.dart';
import 'shimmer_box.dart';

/// A titled, horizontally-scrolling rail of [MoviePosterCard]s, built from
/// an [AsyncValue] so any Home section (Trending, Popular, Top Rated,
/// Upcoming, …) gets consistent loading/error/empty handling for free.
class MovieRailSection extends ConsumerWidget {
  const MovieRailSection({
    required this.title,
    required this.moviesAsync,
    required this.onRetry,
    required this.onMovieTap,
    this.onSeeAll,
    super.key,
  });

  final String title;
  final AsyncValue<List<Movie>> moviesAsync;
  final VoidCallback onRetry;
  final ValueChanged<Movie> onMovieTap;
  final VoidCallback? onSeeAll;

  static const double _railHeight =
      AppDimens.posterCardWidth / AppDimens.posterCardAspectRatio + 56;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Set<int> savedIds = ref.watch(watchlistProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SectionHeader(title: title, onSeeAll: onSeeAll),
        SizedBox(
          height: _railHeight,
          child: moviesAsync.when(
            loading: () => _buildShimmerRow(),
            error: (Object error, StackTrace stackTrace) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.screenPaddingHorizontal,
              ),
              child: InlineErrorView(onRetry: onRetry),
            ),
            data: (List<Movie> movies) {
              if (movies.isEmpty) {
                return const SizedBox.shrink();
              }
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.screenPaddingHorizontal,
                ),
                itemCount: movies.length,
                separatorBuilder: (_, __) => const SizedBox(width: AppDimens.space12),
                itemBuilder: (BuildContext context, int index) {
                  final Movie movie = movies[index];
                  return MoviePosterCard(
                    movie: movie,
                    isSaved: savedIds.contains(movie.id),
                    onTap: () => onMovieTap(movie),
                    onToggleSaved: (int id) =>
                        ref.read(watchlistProvider.notifier).toggle(id),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildShimmerRow() {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.screenPaddingHorizontal,
      ),
      itemCount: 5,
      separatorBuilder: (_, __) => const SizedBox(width: AppDimens.space12),
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ShimmerBox(
              width: AppDimens.posterCardWidth,
              height: AppDimens.posterCardWidth / AppDimens.posterCardAspectRatio,
              borderRadius: AppDimens.radiusMd,
            ),
            const SizedBox(height: AppDimens.space8),
            const ShimmerBox(width: AppDimens.posterCardWidth * 0.7, height: 12),
            const SizedBox(height: 4),
            const ShimmerBox(width: AppDimens.posterCardWidth * 0.4, height: 10),
          ],
        );
      },
    );
  }
}
