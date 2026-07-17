import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/widgets/app_error_view.dart';
import '../../../../core/widgets/shimmer_box.dart';
import '../../../../models/genre.dart';
import '../../../../providers/genres_provider.dart';
import '../widgets/genre_grid_card.dart';

/// Browse's landing view: every genre as a colorful, tappable grid card.
/// Tapping one navigates to the nested genre-movies route within this
/// tab, so the back button returns here with the grid's scroll position
/// intact.
class BrowseScreen extends ConsumerWidget {
  const BrowseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Genre>> genresAsync = ref.watch(genresProvider);

    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.browseCategory)),
      body: genresAsync.when(
        loading: _buildShimmerGrid,
        error: (Object error, StackTrace stackTrace) => Center(
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
            child: InlineErrorView(onRetry: () => ref.invalidate(genresProvider)),
          ),
        ),
        data: (List<Genre> genres) {
          if (genres.isEmpty) {
            return const FullScreenStateView(
              icon: Icons.grid_view_rounded,
              title: 'No categories available',
              subtitle: 'Check back later for genres to browse.',
            );
          }
          return GridView.builder(
            padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: AppDimens.space12,
              mainAxisSpacing: AppDimens.space12,
              childAspectRatio: 1.7,
            ),
            itemCount: genres.length,
            itemBuilder: (BuildContext context, int index) {
              final Genre genre = genres[index];
              return GenreGridCard(
                genreId: genre.id,
                name: genre.name,
                onTap: () => _openGenre(context, genre),
              );
            },
          );
        },
      ),
    );
  }

  void _openGenre(BuildContext context, Genre genre) {
    context.push('/browse/genre/${genre.id}?name=${Uri.encodeComponent(genre.name)}');
  }

  Widget _buildShimmerGrid() {
    return GridView.builder(
      padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: AppDimens.space12,
        mainAxisSpacing: AppDimens.space12,
        childAspectRatio: 1.7,
      ),
      itemCount: 8,
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
