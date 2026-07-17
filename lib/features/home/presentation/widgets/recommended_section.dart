import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/app_error_view.dart';
import '../../../../core/widgets/movie_wide_card.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../../core/widgets/shimmer_box.dart';
import '../../../../models/movie.dart';
import '../../../../providers/watchlist_provider.dart';
import '../providers/home_providers.dart';

/// Vertical "Recommended For You" list — deliberately a different layout
/// (wide cards) from the horizontal rails above it, so Home reads as a
/// mix of horizontal and vertical sections rather than repeating rails.
class RecommendedSection extends ConsumerWidget {
  const RecommendedSection({required this.onMovieTap, super.key});

  final ValueChanged<Movie> onMovieTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Movie>> moviesAsync = ref.watch(recommendedMoviesProvider);
    final Set<int> savedIds = ref.watch(watchlistProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionHeader(title: AppStrings.sectionRecommended),
        moviesAsync.when(
          loading: () => Column(
            children: List<Widget>.generate(
              3,
              (int index) => const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: AppDimens.screenPaddingHorizontal,
                  vertical: AppDimens.space8,
                ),
                child: Row(
                  children: <Widget>[
                    ShimmerBox(width: 84, height: 126, borderRadius: AppDimens.radiusSm),
                    SizedBox(width: AppDimens.space12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ShimmerBox(width: double.infinity, height: 14),
                          SizedBox(height: 8),
                          ShimmerBox(width: 120, height: 12),
                          SizedBox(height: 8),
                          ShimmerBox(width: 90, height: 12),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          error: (Object error, StackTrace stackTrace) => Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimens.screenPaddingHorizontal,
            ),
            child: InlineErrorView(onRetry: () => ref.invalidate(recommendedMoviesProvider)),
          ),
          data: (List<Movie> movies) {
            if (movies.isEmpty) return const SizedBox.shrink();
            return Column(
              children: movies
                  .map(
                    (Movie movie) => MovieWideCard(
                      movie: movie,
                      isSaved: savedIds.contains(movie.id),
                      onTap: () => onMovieTap(movie),
                      onToggleSaved: (int id) =>
                          ref.read(watchlistProvider.notifier).toggle(id),
                    ),
                  )
                  .toList(),
            );
          },
        ),
      ],
    );
  }
}
