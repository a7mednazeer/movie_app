import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../models/movie.dart';
import '../constants/app_colors.dart';
import '../constants/app_dimens.dart';
import '../extensions/context_extensions.dart';
import 'movie_poster_card.dart';
import 'shimmer_box.dart';

/// A wide, horizontally-laid-out movie card: poster thumbnail + title,
/// year, genres, rating, and an optional trailing action. Used for
/// vertical lists like Home's "Recommended For You" and (later) Search
/// results and the Watchlist screen.
class MovieWideCard extends StatelessWidget {
  const MovieWideCard({
    required this.movie,
    required this.onTap,
    this.isSaved = false,
    this.onToggleSaved,
    super.key,
  });

  final Movie movie;
  final VoidCallback onTap;
  final bool isSaved;
  final ValueChanged<int>? onToggleSaved;

  @override
  Widget build(BuildContext context) {
    final String genreLine = movie.genres.isEmpty
        ? ''
        : movie.genres.map((g) => g.name).take(2).join(' • ');

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppDimens.radiusMd),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.screenPaddingHorizontal,
          vertical: AppDimens.space8,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: moviePosterHeroTag(movie.id),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppDimens.radiusSm),
                child: SizedBox(
                  width: 84,
                  height: 84 / AppDimens.posterCardAspectRatio,
                  child: movie.posterUrl == null
                      ? Container(
                          color: AppColors.darkSurfaceElevated,
                          alignment: Alignment.center,
                          child: const Icon(
                            Icons.movie_creation_outlined,
                            color: AppColors.darkTextTertiary,
                          ),
                        )
                      : CachedNetworkImage(
                          imageUrl: movie.posterUrl!,
                          fit: BoxFit.cover,
                          placeholder: (BuildContext context, String url) =>
                              const ShimmerBox(width: 84, height: 126, borderRadius: 0),
                        ),
                ),
              ),
            ),
            const SizedBox(width: AppDimens.space12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    movie.title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    <String>[movie.releaseYear, if (movie.formattedRuntime.isNotEmpty) movie.formattedRuntime]
                        .join('  •  '),
                    style: context.textTheme.bodySmall,
                  ),
                  if (genreLine.isNotEmpty) ...<Widget>[
                    const SizedBox(height: 4),
                    Text(genreLine, style: context.textTheme.bodySmall),
                  ],
                  const SizedBox(height: 6),
                  Row(
                    children: <Widget>[
                      const Icon(Icons.star_rounded, size: 15, color: AppColors.ratingGold),
                      const SizedBox(width: 3),
                      Text(movie.formattedRating, style: context.textTheme.labelMedium),
                    ],
                  ),
                ],
              ),
            ),
            if (onToggleSaved != null)
              IconButton(
                onPressed: () => onToggleSaved!(movie.id),
                icon: Icon(
                  isSaved ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
                  color: isSaved ? AppColors.primary : context.colors.onSurfaceVariant,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
