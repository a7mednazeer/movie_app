import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/core/widgets/movie_poster_card.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../models/movie.dart';

/// Temporary placeholder that already wires up the real navigation
/// contract (`context.push(RouteNames.movieDetails, extra: movie)`) and
/// the Hero poster animation from every movie card. The full details
/// experience — backdrop, cast, similar movies, reviews, trailer, etc. —
/// is the next screen on the build plan and replaces this file.
class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({required this.movie, super.key});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.space20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: moviePosterHeroTag(movie.id),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppDimens.radiusMd),
                child: SizedBox(
                  width: 120,
                  height: 180,
                  child: movie.posterUrl == null
                      ? Container(
                          color: AppColors.darkSurfaceElevated,
                          alignment: Alignment.center,
                          child: const Icon(Icons.movie_creation_outlined),
                        )
                      : CachedNetworkImage(imageUrl: movie.posterUrl!, fit: BoxFit.cover),
                ),
              ),
            ),
            const SizedBox(width: AppDimens.space16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(movie.title, style: context.textTheme.headlineSmall),
                  const SizedBox(height: AppDimens.space8),
                  Text(
                    '${movie.releaseYear} · ${movie.formattedRuntime}',
                    style: context.textTheme.bodyMedium,
                  ),
                  const SizedBox(height: AppDimens.space16),
                  Text(movie.overview, style: context.textTheme.bodyMedium),
                  const SizedBox(height: AppDimens.space16),
                  Text(
                    'Full details (cast, similar movies, reviews, trailer) '
                    'coming next.',
                    style: context.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
