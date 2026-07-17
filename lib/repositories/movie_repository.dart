import 'package:dartz/dartz.dart';

import '../core/errors/failures.dart';
import '../models/genre.dart';
import '../models/movie.dart';

/// Contract for everything movie-data-related.
///
/// Presentation-layer code depends only on this abstraction — never on
/// [MovieRepositoryImpl] or any concrete data source — so swapping dummy
/// data for the real TMDB API later requires zero changes outside
/// `repositories/movie_repository_impl.dart`.
abstract class MovieRepository {
  Future<Either<Failure, List<Movie>>> getTrendingMovies();

  Future<Either<Failure, List<Movie>>> getPopularMovies({int page = 1});

  Future<Either<Failure, List<Movie>>> getTopRatedMovies({int page = 1});

  Future<Either<Failure, List<Movie>>> getUpcomingMovies({int page = 1});

  Future<Either<Failure, List<Movie>>> getRecommendedMovies();

  Future<Either<Failure, List<Movie>>> getMoviesByGenre(int genreId, {int page = 1});

  Future<Either<Failure, List<Movie>>> searchMovies(String query, {int page = 1});

  Future<Either<Failure, Movie>> getMovieDetails(int movieId);

  Future<Either<Failure, List<Movie>>> getSimilarMovies(int movieId);

  Future<Either<Failure, List<Genre>>> getGenres();
}
