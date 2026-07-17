import 'package:dartz/dartz.dart';

import '../core/errors/exceptions.dart';
import '../core/errors/failures.dart';
import '../models/cast_member.dart';
import '../models/genre.dart';
import '../models/movie.dart';
import '../models/review.dart';
import 'datasources/dummy_movie_data_source.dart';
import 'movie_repository.dart';

/// Concrete [MovieRepository], currently backed by [DummyMovieDataSource].
///
/// ## Swapping in the real TMDB API
/// 1. Create `MovieRemoteDataSource` with the same method signatures as
///    [DummyMovieDataSource], calling `ApiClient.get(ApiEndpoints...)` and
///    mapping the JSON response into `Movie`/`Genre` via
///    `Movie.fromJson` / `Genre.fromJson`.
/// 2. Replace the [DummyMovieDataSource] field below with the new remote
///    source.
/// 3. Nothing else changes — every Notifier/ViewModel already depends on
///    [MovieRepository], not on this implementation.
class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl({DummyMovieDataSource? dataSource})
      : _dataSource = dataSource ?? DummyMovieDataSource();

  final DummyMovieDataSource _dataSource;

  Future<Either<Failure, T>> _guard<T>(Future<T> Function() action) async {
    try {
      final T result = await action();
      return Right<Failure, T>(result);
    } on NetworkException catch (e) {
      return Left<Failure, T>(NetworkFailure(e.message));
    } on TimeoutException catch (e) {
      return Left<Failure, T>(TimeoutFailure(e.message));
    } on NotFoundException catch (e) {
      return Left<Failure, T>(NotFoundFailure(e.message));
    } on ServerException catch (e) {
      return Left<Failure, T>(ServerFailure(e.message));
    } on CacheException catch (e) {
      return Left<Failure, T>(CacheFailure(e.message));
    } catch (_) {
      return Left<Failure, T>(const UnknownFailure());
    }
  }

  @override
  Future<Either<Failure, List<Movie>>> getTrendingMovies() {
    return _guard(_dataSource.fetchTrending);
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies({int page = 1}) {
    return _guard(() => _dataSource.fetchPopular(page: page));
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies({int page = 1}) {
    return _guard(() => _dataSource.fetchTopRated(page: page));
  }

  @override
  Future<Either<Failure, List<Movie>>> getUpcomingMovies({int page = 1}) {
    return _guard(() => _dataSource.fetchUpcoming(page: page));
  }

  @override
  Future<Either<Failure, List<Movie>>> getRecommendedMovies() {
    return _guard(_dataSource.fetchRecommended);
  }

  @override
  Future<Either<Failure, List<Movie>>> getMoviesByGenre(int genreId, {int page = 1}) {
    return _guard(() => _dataSource.fetchByGenre(genreId, page: page));
  }

  @override
  Future<Either<Failure, List<Movie>>> searchMovies(String query, {int page = 1}) {
    return _guard(() => _dataSource.search(query, page: page));
  }

  @override
  Future<Either<Failure, Movie>> getMovieDetails(int movieId) {
    return _guard(() => _dataSource.fetchDetails(movieId));
  }

  @override
  Future<Either<Failure, List<Movie>>> getSimilarMovies(int movieId) {
    return _guard(() => _dataSource.fetchSimilar(movieId));
  }

  @override
  Future<Either<Failure, List<CastMember>>> getMovieCredits(int movieId) {
    return _guard(() => _dataSource.fetchCredits(movieId));
  }

  @override
  Future<Either<Failure, List<Review>>> getMovieReviews(int movieId) {
    return _guard(() => _dataSource.fetchReviews(movieId));
  }

  @override
  Future<Either<Failure, List<Genre>>> getGenres() {
    return _guard(_dataSource.fetchGenres);
  }
}
