import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/widgets/genre_chip.dart';
import 'package:movie_app/core/widgets/section_header.dart';
import 'package:movie_app/core/widgets/shimmer_box.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/app_strings.dart';

import '../../../../models/genre.dart';
import '../providers/home_providers.dart';

/// A horizontally-scrolling row of genre chips, sourced from
/// [homeGenresProvider]. Tapping a chip opens Browse pre-filtered to that
/// genre — wired in [HomeScreen] via [onGenreTap].
class CategoriesSection extends ConsumerWidget {
  const CategoriesSection({required this.onGenreTap, super.key});

  final ValueChanged<Genre> onGenreTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Genre>> genresAsync = ref.watch(homeGenresProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionHeader(title: AppStrings.sectionCategories),
        SizedBox(
          height: 44,
          child: genresAsync.when(
            loading: () => ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.screenPaddingHorizontal,
              ),
              itemCount: 6,
              separatorBuilder: (_, __) => const SizedBox(width: AppDimens.space8),
              itemBuilder: (_, __) =>
                  const ShimmerBox(width: 84, height: 40, borderRadius: AppDimens.radiusPill),
            ),
            error: (Object error, StackTrace stackTrace) => Center(
              child: TextButton(
                onPressed: () => ref.invalidate(homeGenresProvider),
                child: const Text(AppStrings.retry),
              ),
            ),
            data: (List<Genre> genres) {
              if (genres.isEmpty) return const SizedBox.shrink();
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.screenPaddingHorizontal,
                ),
                itemCount: genres.length,
                separatorBuilder: (_, __) => const SizedBox(width: AppDimens.space8),
                itemBuilder: (BuildContext context, int index) {
                  final Genre genre = genres[index];
                  return GenreChip(label: genre.name, onTap: () => onGenreTap(genre));
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
