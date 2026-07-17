import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../models/movie.dart';
import '../constants/app_colors.dart';
import '../constants/app_dimens.dart';
import '../extensions/context_extensions.dart';
import 'shimmer_box.dart';

/// Returns a stable Hero tag shared between a poster card and the details
/// screen it navigates to, so the poster animates smoothly between them.
String moviePosterHeroTag(int movieId) => 'movie-poster-$movieId';

/// A portrait poster card: image, rating badge, title, and year — the
/// primary building block of every horizontal movie rail in the app.
class MoviePosterCard extends StatelessWidget {
  const MoviePosterCard({
    required this.movie,
    required this.onTap,
    this.isSaved = false,
    this.onToggleSaved,
    this.width = AppDimens.posterCardWidth,
    super.key,
  });

  final Movie movie;
  final VoidCallback onTap;
  final bool isSaved;
  final ValueChanged<int>? onToggleSaved;
  final double width;

  @override
  Widget build(BuildContext context) {
    final double height = width / AppDimens.posterCardAspectRatio;

    return SizedBox(
      width: width,
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.opaque,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: width,
              height: height,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Hero(
                    tag: moviePosterHeroTag(movie.id),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(AppDimens.radiusMd),
                      child: _PosterImage(movie: movie),
                    ),
                  ),
                  Positioned(
                    top: AppDimens.space6,
                    left: AppDimens.space6,
                    child: _RatingBadge(rating: movie.formattedRating),
                  ),
                  if (onToggleSaved != null)
                    Positioned(
                      top: AppDimens.space6,
                      right: AppDimens.space6,
                      child: _SaveButton(
                        isSaved: isSaved,
                        onTap: () => onToggleSaved!(movie.id),
                      ),
                    ),
                ],
              ),
            ),
            const SizedBox(height: AppDimens.space8),
            Text(
              movie.title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleSmall,
            ),
            const SizedBox(height: 2),
            Text(
              movie.releaseYear,
              style: context.textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}

class _PosterImage extends StatelessWidget {
  const _PosterImage({required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    final String? url = movie.posterUrl;
    if (url == null) {
      return const _PosterFallback();
    }
    return CachedNetworkImage(
      imageUrl: url,
      fit: BoxFit.cover,
      placeholder: (BuildContext context, String url) =>
          const ShimmerBox(width: double.infinity, height: double.infinity, borderRadius: 0),
      errorWidget: (BuildContext context, String url, Object error) =>
          const _PosterFallback(),
    );
  }
}

/// Shown whenever no real poster image is available yet — a clean,
/// on-brand placeholder rather than a broken-image icon.
class _PosterFallback extends StatelessWidget {
  const _PosterFallback();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.darkSurfaceElevated,
      alignment: Alignment.center,
      child: Icon(
        Icons.movie_creation_outlined,
        size: AppDimens.iconXl,
        color: AppColors.darkTextTertiary,
      ),
    );
  }
}

class _RatingBadge extends StatelessWidget {
  const _RatingBadge({required this.rating});

  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: BoxDecoration(
        color: AppColors.scrimStrong,
        borderRadius: BorderRadius.circular(AppDimens.radiusXs),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const Icon(Icons.star_rounded, size: 12, color: AppColors.ratingGold),
          const SizedBox(width: 3),
          Text(
            rating,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class _SaveButton extends StatelessWidget {
  const _SaveButton({required this.isSaved, required this.onTap});

  final bool isSaved;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 26,
        height: 26,
        decoration: const BoxDecoration(
          color: AppColors.scrimStrong,
          shape: BoxShape.circle,
        ),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: Icon(
            isSaved ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
            key: ValueKey<bool>(isSaved),
            size: 15,
            color: isSaved ? AppColors.primary : Colors.white,
          ),
        ),
      ),
    );
  }
}
