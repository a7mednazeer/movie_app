import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/asset_paths.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/app_error_view.dart';
import '../../../../core/widgets/movie_wide_card.dart';
import '../../../../core/widgets/shimmer_box.dart';
import '../../../../models/movie.dart';
import '../../../../providers/watchlist_provider.dart';
import '../providers/search_providers.dart';

/// The live results list for the current query — a vertical list of wide
/// movie cards with its own loading, error/retry, and no-results states.
class SearchResultsList extends ConsumerWidget {
  const SearchResultsList({
    required this.query,
    required this.onMovieTap,
    this.isPending = false,
    super.key,
  });

  final String query;
  final ValueChanged<Movie> onMovieTap;

  /// True while the debounce timer is still pending — shows a shimmer
  /// immediately instead of waiting for the network request to start.
  final bool isPending;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (isPending) {
      return _buildShimmerList();
    }

    final AsyncValue<List<Movie>> resultsAsync = ref.watch(searchResultsProvider(query));
    final Set<int> savedIds = ref.watch(watchlistProvider);

    return resultsAsync.when(
      loading: _buildShimmerList,
      error: (Object error, StackTrace stackTrace) => Padding(
        padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
        child: InlineErrorView(error: error, onRetry: () => ref.invalidate(searchResultsProvider(query))),
      ),
      data: (List<Movie> movies) {
        if (movies.isEmpty) {
          return const Padding(
            padding: EdgeInsets.only(top: AppDimens.space64),
            child: FullScreenStateView(
              icon: Icons.movie_filter_outlined,
              illustrationAsset: AssetPaths.noResultsIllustration,
              title: AppStrings.noResultsFound,
              subtitle: AppStrings.noResultsSubtitle,
            ),
          );
        }
        return ListView.builder(
          padding: const EdgeInsets.only(top: AppDimens.space8, bottom: AppDimens.space32),
          itemCount: movies.length,
          itemBuilder: (BuildContext context, int index) {
            final Movie movie = movies[index];
            return MovieWideCard(
              movie: movie,
              isSaved: savedIds.contains(movie.id),
              onTap: () => onMovieTap(movie),
              onToggleSaved: (int id) => ref.read(watchlistProvider.notifier).toggle(id),
            );
          },
        );
      },
    );
  }

  Widget _buildShimmerList() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.screenPaddingHorizontal,
        vertical: AppDimens.space12,
      ),
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: AppDimens.space12),
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
        );
      },
    );
  }
}
