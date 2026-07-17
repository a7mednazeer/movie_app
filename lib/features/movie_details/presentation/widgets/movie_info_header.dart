import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/movie_poster_card.dart';
import '../../../../models/movie.dart';

/// Title, release/runtime/certification metadata, and a poster + genre
/// chips row — the primary "who/what is this movie" block directly below
/// the backdrop.
class MovieInfoHeader extends StatelessWidget {
  const MovieInfoHeader({required this.movie, super.key});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppDimens.screenPaddingHorizontal,
        AppDimens.space16,
        AppDimens.screenPaddingHorizontal,
        0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(movie.title, style: context.textTheme.headlineMedium),
          const SizedBox(height: AppDimens.space8),
          Row(
            children: <Widget>[
              Text(movie.releaseYear, style: context.textTheme.bodyMedium),
              if (movie.certification != null) ...<Widget>[
                const _MetaDot(),
                _CertificationBadge(label: movie.certification!),
              ],
              if (movie.formattedRuntime.isNotEmpty) ...<Widget>[
                const _MetaDot(),
                Text(movie.formattedRuntime, style: context.textTheme.bodyMedium),
              ],
              const _MetaDot(),
              const Icon(Icons.star_rounded, size: 16, color: AppColors.ratingGold),
              const SizedBox(width: 3),
              Text(
                '${movie.formattedRating}  (${movie.voteCount})',
                style: context.textTheme.bodyMedium,
              ),
            ],
          ),
          const SizedBox(height: AppDimens.space16),
          Row(
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
                        : CachedNetworkImage(imageUrl: movie.posterUrl!, fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(width: AppDimens.space12),
              Expanded(
                child: Wrap(
                  spacing: AppDimens.space8,
                  runSpacing: AppDimens.space8,
                  children: movie.genres
                      .map((genre) => _GenreBadge(label: genre.name))
                      .toList(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _MetaDot extends StatelessWidget {
  const _MetaDot();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Text('•', style: context.textTheme.bodyMedium),
    );
  }
}

class _CertificationBadge extends StatelessWidget {
  const _CertificationBadge({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 1),
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.outline),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(label, style: context.textTheme.labelSmall),
    );
  }
}

class _GenreBadge extends StatelessWidget {
  const _GenreBadge({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: context.colors.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(AppDimens.radiusPill),
      ),
      child: Text(label, style: context.textTheme.labelMedium),
    );
  }
}
