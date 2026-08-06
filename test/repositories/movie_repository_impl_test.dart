import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/core/errors/exceptions.dart';
import 'package:movie_app/core/errors/failures.dart';
import 'package:movie_app/models/genre.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/repositories/datasources/dummy_movie_data_source.dart';
import 'package:movie_app/repositories/movie_repository_impl.dart';

/// A [DummyMovieDataSource] that throws a chosen exception from
/// `fetchTrending`/`fetchGenres`, leaving every other method's normal
/// dummy behavior untouched — enough to exercise
/// `MovieRepositoryImpl`'s exception-to-[Failure] mapping without any
/// real network dependency.
class _ThrowingDataSource extends DummyMovieDataSource {
  _ThrowingDataSource(this.exceptionToThrow);

  final Object exceptionToThrow;

  @override
  Future<List<Movie>> fetchTrending() async {
    throw exceptionToThrow;
  }

  @override
  Future<List<Genre>> fetchGenres() async {
    throw exceptionToThrow;
  }
}

void main() {
  group('MovieRepositoryImpl — dummy data source (useRemote: false)', () {
    test('getTrendingMovies delegates to the dummy data source and wraps in Right', () async {
      final MovieRepositoryImpl repo = MovieRepositoryImpl(useRemote: false);

      final Either<Failure, List<Movie>> result = await repo.getTrendingMovies();

      expect(result.isRight(), isTrue);
      result.fold(
        (Failure f) => fail('expected Right, got Left($f)'),
        (List<Movie> movies) => expect(movies, hasLength(10)),
      );
    });

    test('getGenres returns the dummy genre catalog', () async {
      final MovieRepositoryImpl repo = MovieRepositoryImpl(useRemote: false);

      final Either<Failure, List<Genre>> result = await repo.getGenres();

      expect(result.isRight(), isTrue);
      result.fold(
        (Failure f) => fail('expected Right, got Left($f)'),
        (List<Genre> genres) => expect(genres, isNotEmpty),
      );
    });

    test('getMovieDetails returns the movie with the requested id', () async {
      final MovieRepositoryImpl repo = MovieRepositoryImpl(useRemote: false);

      final Either<Failure, Movie> result = await repo.getMovieDetails(4);

      result.fold(
        (Failure f) => fail('expected Right, got Left($f)'),
        (Movie movie) => expect(movie.id, 4),
      );
    });
  });

  group('MovieRepositoryImpl — exception-to-Failure mapping', () {
    test('NetworkException becomes a NetworkFailure with the same message', () async {
      final MovieRepositoryImpl repo = MovieRepositoryImpl(
        useRemote: false,
        dummyDataSource: _ThrowingDataSource(const NetworkException('no signal')),
      );

      final Either<Failure, List<Movie>> result = await repo.getTrendingMovies();

      expect(result.isLeft(), isTrue);
      result.fold(
        (Failure f) {
          expect(f, isA<NetworkFailure>());
          expect(f.message, 'no signal');
        },
        (_) => fail('expected Left'),
      );
    });

    test('TimeoutException becomes a TimeoutFailure', () async {
      final MovieRepositoryImpl repo = MovieRepositoryImpl(
        useRemote: false,
        dummyDataSource: _ThrowingDataSource(const TimeoutException()),
      );

      final Either<Failure, List<Movie>> result = await repo.getTrendingMovies();

      result.fold((Failure f) => expect(f, isA<TimeoutFailure>()), (_) => fail('expected Left'));
    });

    test('ServerException becomes a ServerFailure preserving its message', () async {
      final MovieRepositoryImpl repo = MovieRepositoryImpl(
        useRemote: false,
        dummyDataSource: _ThrowingDataSource(const ServerException('Invalid API key')),
      );

      final Either<Failure, List<Genre>> result = await repo.getGenres();

      result.fold(
        (Failure f) {
          expect(f, isA<ServerFailure>());
          expect(f.message, 'Invalid API key');
        },
        (_) => fail('expected Left'),
      );
    });

    test('NotFoundException becomes a NotFoundFailure', () async {
      final MovieRepositoryImpl repo = MovieRepositoryImpl(
        useRemote: false,
        dummyDataSource: _ThrowingDataSource(const NotFoundException()),
      );

      final Either<Failure, List<Movie>> result = await repo.getTrendingMovies();

      result.fold((Failure f) => expect(f, isA<NotFoundFailure>()), (_) => fail('expected Left'));
    });

    test('an unexpected raw exception becomes an UnknownFailure rather than crashing', () async {
      final MovieRepositoryImpl repo = MovieRepositoryImpl(
        useRemote: false,
        dummyDataSource: _ThrowingDataSource(Exception('totally unexpected')),
      );

      final Either<Failure, List<Movie>> result = await repo.getTrendingMovies();

      result.fold((Failure f) => expect(f, isA<UnknownFailure>()), (_) => fail('expected Left'));
    });
  });
}
