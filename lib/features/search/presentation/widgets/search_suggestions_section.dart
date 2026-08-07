import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/genre_chip.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../../core/widgets/shimmer_box.dart';
import '../../../../models/movie.dart';
import '../../../home/presentation/providers/home_providers.dart';

/// Quick-tap suggestions sourced from what's currently trending — reuses
/// [trendingMoviesProvider] (already fetched for Home) rather than
/// issuing a second, duplicate network request.
class SearchSuggestionsSection extends ConsumerWidget {
  const SearchSuggestionsSection({required this.onSuggestionTap, super.key});

  final ValueChanged<String> onSuggestionTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Movie>> trendingAsync = ref.watch(trendingMoviesProvider);

    return trendingAsync.when(
      loading: () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SectionHeader(title: context.l10n.trendingSearches),
          SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.screenPaddingHorizontal,
              ),
              itemCount: 4,
              separatorBuilder: (_, __) => const SizedBox(width: AppDimens.space8),
              itemBuilder: (_, __) =>
                  const ShimmerBox(width: 96, height: 40, borderRadius: AppDimens.radiusPill),
            ),
          ),
        ],
      ),
      error: (Object error, StackTrace stackTrace) => const SizedBox.shrink(),
      data: (List<Movie> movies) {
        if (movies.isEmpty) return const SizedBox.shrink();
        final List<Movie> suggestions = movies.take(8).toList();
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SectionHeader(title: context.l10n.trendingSearches),
            SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.screenPaddingHorizontal,
                ),
                itemCount: suggestions.length,
                separatorBuilder: (_, __) => const SizedBox(width: AppDimens.space8),
                itemBuilder: (BuildContext context, int index) {
                  final Movie movie = suggestions[index];
                  return GenreChip(
                    label: movie.title,
                    onTap: () => onSuggestionTap(movie.title),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
