import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/utils/either_unwrap.dart';
import '../../../../models/movie.dart';
import '../../../../providers/repository_providers.dart';
import '../../../../repositories/movie_repository.dart';

/// Movies belonging to a single genre, keyed by genre id so switching
/// between genres (or navigating back to one already visited) is
/// instant thanks to Riverpod's per-argument caching.
final genreMoviesProvider =
    FutureProvider.autoDispose.family<List<Movie>, int>((ref, genreId) {
  final MovieRepository repo = ref.watch(movieRepositoryProvider);
  return unwrapEither(repo.getMoviesByGenre(genreId));
});
