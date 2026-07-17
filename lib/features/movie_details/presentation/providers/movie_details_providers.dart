import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/utils/either_unwrap.dart';
import '../../../../models/cast_member.dart';
import '../../../../models/movie.dart';
import '../../../../models/review.dart';
import '../../../../providers/repository_providers.dart';
import '../../../../repositories/movie_repository.dart';

/// Cast credits for a given movie id. Independent from [movieReviewsProvider]
/// and [similarMoviesProvider] so each section of Movie Details loads,
/// errors, and retries on its own.
final movieCastProvider =
    FutureProvider.autoDispose.family<List<CastMember>, int>((ref, movieId) {
  final MovieRepository repo = ref.watch(movieRepositoryProvider);
  return unwrapEither(repo.getMovieCredits(movieId));
});

/// User reviews for a given movie id.
final movieReviewsProvider =
    FutureProvider.autoDispose.family<List<Review>, int>((ref, movieId) {
  final MovieRepository repo = ref.watch(movieRepositoryProvider);
  return unwrapEither(repo.getMovieReviews(movieId));
});

/// "More Like This" — similar movies for a given movie id.
final similarMoviesProvider =
    FutureProvider.autoDispose.family<List<Movie>, int>((ref, movieId) {
  final MovieRepository repo = ref.watch(movieRepositoryProvider);
  return unwrapEither(repo.getSimilarMovies(movieId));
});
