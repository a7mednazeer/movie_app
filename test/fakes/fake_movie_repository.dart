import 'package:dartz/dartz.dart';
import 'package:movie_app/core/errors/failures.dart';
import 'package:movie_app/models/cast_member.dart';
import 'package:movie_app/models/genre.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/models/review.dart';
import 'package:movie_app/repositories/movie_repository.dart';

/// A fully controllable [MovieRepository] test double.
///
/// Every method returns [Right] with whatever canned value was set on the
/// matching field, unless [failWith] is set — in which case every method
/// returns [Left] with that [Failure] instead, letting a single fake
/// exercise both the happy path and the error path of anything that
/// depends on [MovieRepository].
class FakeMovieRepository implements MovieRepository {
  List<Movie> trending = const <Movie>[];
  List<Movie> popular = const <Movie>[];
  List<Movie> topRated = const <Movie>[];
  List<Movie> upcoming = const <Movie>[];
  List<Movie> recommended = const <Movie>[];
  List<Movie> byGenre = const <Movie>[];
  List<Movie> searchResults = const <Movie>[];
  List<Movie> similar = const <Movie>[];
  Movie? details;
  List<CastMember> cast = const <CastMember>[];
  List<Review> reviews = const <Review>[];
  List<Genre> genres = const <Genre>[];

  /// When non-null, every method returns `Left(failWith)` instead of its
  /// canned success value.
  Failure? failWith;

  /// Records how many times each method was called, keyed by name — lets
  /// a test assert a provider only fetched once, refetched after
  /// invalidation, etc.
  final Map<String, int> callCounts = <String, int>{};

  void _record(String name) {
    callCounts[name] = (callCounts[name] ?? 0) + 1;
  }

  Either<Failure, T> _result<T>(T value) {
    final Failure? failure = failWith;
    return failure != null ? Left<Failure, T>(failure) : Right<Failure, T>(value);
  }

  @override
  Future<Either<Failure, List<Movie>>> getTrendingMovies() async {
    _record('getTrendingMovies');
    return _result(trending);
  }

  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies({int page = 1}) async {
    _record('getPopularMovies');
    return _result(popular);
  }

  @override
  Future<Either<Failure, List<Movie>>> getTopRatedMovies({int page = 1}) async {
    _record('getTopRatedMovies');
    return _result(topRated);
  }

  @override
  Future<Either<Failure, List<Movie>>> getUpcomingMovies({int page = 1}) async {
    _record('getUpcomingMovies');
    return _result(upcoming);
  }

  @override
  Future<Either<Failure, List<Movie>>> getRecommendedMovies() async {
    _record('getRecommendedMovies');
    return _result(recommended);
  }

  @override
  Future<Either<Failure, List<Movie>>> getMoviesByGenre(int genreId, {int page = 1}) async {
    _record('getMoviesByGenre');
    return _result(byGenre);
  }

  @override
  Future<Either<Failure, List<Movie>>> searchMovies(String query, {int page = 1}) async {
    _record('searchMovies');
    return _result(searchResults);
  }

  @override
  Future<Either<Failure, Movie>> getMovieDetails(int movieId) async {
    _record('getMovieDetails');
    final Movie? movie = details;
    if (failWith == null && movie == null) {
      throw StateError('FakeMovieRepository.details was not set for getMovieDetails()');
    }
    return _result(movie as Movie);
  }

  @override
  Future<Either<Failure, List<Movie>>> getSimilarMovies(int movieId) async {
    _record('getSimilarMovies');
    return _result(similar);
  }

  @override
  Future<Either<Failure, List<CastMember>>> getMovieCredits(int movieId) async {
    _record('getMovieCredits');
    return _result(cast);
  }

  @override
  Future<Either<Failure, List<Review>>> getMovieReviews(int movieId) async {
    _record('getMovieReviews');
    return _result(reviews);
  }

  @override
  Future<Either<Failure, List<Genre>>> getGenres() async {
    _record('getGenres');
    return _result(genres);
  }
}
