import 'package:dartz/dartz.dart';

import '../core/errors/exceptions.dart';
import '../core/errors/failures.dart';
import '../core/network/api_endpoints.dart';
import '../models/cast_member.dart';
import '../models/genre.dart';
import '../models/movie.dart';
import '../models/review.dart';
import 'datasources/dummy_movie_data_source.dart';
import 'datasources/movie_remote_data_source.dart';
import 'movie_repository.dart';

/// Concrete [MovieRepository].
///
/// Automatically uses the real [MovieRemoteDataSource] (TMDB) once a key
/// is configured via `--dart-define=c7e3fb5ddb5011244118a2d0e623e336=...` (see
/// `ApiEndpoints.apiKey`), and falls back to [DummyMovieDataSource]
/// otherwise — so the app is fully functional out of the box, and
/// upgrades to real data the moment a key is supplied, with no code
/// changes required either way.
///
/// The choice is made once at construction, not per-request: if the real
/// API is configured but a single request fails (e.g. no internet), that
/// failure surfaces to the UI as a real, retryable [Failure] rather than
/// silently swapping to dummy data — a signed-in-for-real-data user
/// should see an honest error, not quietly-wrong content.
class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl({
    MovieRemoteDataSource? remoteDataSource,
    DummyMovieDataSource? dummyDataSource,
    bool? useRemote,
  })  : _remote = remoteDataSource ?? MovieRemoteDataSource(),
        _dummy = dummyDataSource ?? DummyMovieDataSource(),
        _useRemote = useRemote ?? ApiEndpoints.apiKey.isNotEmpty;

  final MovieRemoteDataSource _remote;
  final DummyMovieDataSource _dummy;
  final bool _useRemote;

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
    return _guard(_useRemote ? _remote.fetchTrending : _dummy.fetchTrending);
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies({int page = 1}) {
    return _guard(() => _useRemote
        ? _remote.fetchPopular(page: page)
        : _dummy.fetchPopular(page: page));
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies({int page = 1}) {
    return _guard(() => _useRemote
        ? _remote.fetchTopRated(page: page)
        : _dummy.fetchTopRated(page: page));
  }

  @override
  Future<Either<Failure, List<Movie>>> getUpcomingMovies({int page = 1}) {
    return _guard(() => _useRemote
        ? _remote.fetchUpcoming(page: page)
        : _dummy.fetchUpcoming(page: page));
  }

  @override
  Future<Either<Failure, List<Movie>>> getRecommendedMovies() {
    return _guard(_useRemote ? _remote.fetchRecommended : _dummy.fetchRecommended);
  }

  @override
  Future<Either<Failure, List<Movie>>> getMoviesByGenre(int genreId, {int page = 1}) {
    return _guard(() => _useRemote
        ? _remote.fetchByGenre(genreId, page: page)
        : _dummy.fetchByGenre(genreId, page: page));
  }

  @override
  Future<Either<Failure, List<Movie>>> searchMovies(String query, {int page = 1}) {
    return _guard(
      () => _useRemote ? _remote.search(query, page: page) : _dummy.search(query, page: page),
    );
  }

  @override
  Future<Either<Failure, Movie>> getMovieDetails(int movieId) {
    return _guard(
      () => _useRemote ? _remote.fetchDetails(movieId) : _dummy.fetchDetails(movieId),
    );
  }

  @override
  Future<Either<Failure, List<Movie>>> getSimilarMovies(int movieId) {
    return _guard(
      () => _useRemote ? _remote.fetchSimilar(movieId) : _dummy.fetchSimilar(movieId),
    );
  }

  @override
  Future<Either<Failure, List<CastMember>>> getMovieCredits(int movieId) {
    return _guard(
      () => _useRemote ? _remote.fetchCredits(movieId) : _dummy.fetchCredits(movieId),
    );
  }

  @override
  Future<Either<Failure, List<Review>>> getMovieReviews(int movieId) {
    return _guard(
      () => _useRemote ? _remote.fetchReviews(movieId) : _dummy.fetchReviews(movieId),
    );
  }

  @override
  Future<Either<Failure, List<Genre>>> getGenres() {
    return _guard(_useRemote ? _remote.fetchGenres : _dummy.fetchGenres);
  }
}
