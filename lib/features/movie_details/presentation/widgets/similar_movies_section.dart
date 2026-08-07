import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../core/widgets/movie_rail_section.dart';
import '../../../../models/movie.dart';
import '../providers/movie_details_providers.dart';

/// "More Like This" — reuses the shared [MovieRailSection] so Movie
/// Details gets the exact same loading/error/empty handling as Home's
/// rails, with zero duplicated UI code.
class SimilarMoviesSection extends ConsumerWidget {
  const SimilarMoviesSection({required this.movieId, super.key});

  final int movieId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Movie>> similarAsync = ref.watch(similarMoviesProvider(movieId));

    return MovieRailSection(
      title: context.l10n.moreLikeThis,
      moviesAsync: similarAsync,
      onRetry: () => ref.invalidate(similarMoviesProvider(movieId)),
      onMovieTap: (Movie movie) => context.push(RouteNames.movieDetails, extra: movie),
    );
  }
}
