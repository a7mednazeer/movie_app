import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/repositories/datasources/dummy_movie_data_source.dart';

void main() {
  late DummyMovieDataSource dataSource;

  setUp(() {
    dataSource = DummyMovieDataSource();
  });

  group('fetchTrending', () {
    test('returns exactly 10 movies', () async {
      final List<Movie> movies = await dataSource.fetchTrending();
      expect(movies, hasLength(10));
    });
  });

  group('fetchTopRated', () {
    test('returns movies sorted by vote average, highest first', () async {
      final List<Movie> movies = await dataSource.fetchTopRated();

      expect(movies, hasLength(12));
      for (int i = 0; i < movies.length - 1; i++) {
        expect(
          movies[i].voteAverage,
          greaterThanOrEqualTo(movies[i + 1].voteAverage),
          reason: 'Item $i should be rated >= item ${i + 1}',
        );
      }
    });
  });

  group('search', () {
    test('is case-insensitive and matches partial titles', () async {
      final List<Movie> movies = await dataSource.search('winter');
      expect(movies, isNotEmpty);
      expect(
        movies.every((Movie m) => m.title.toLowerCase().contains('winter')),
        isTrue,
      );
    });

    test('returns an empty list for a blank query rather than every movie', () async {
      final List<Movie> movies = await dataSource.search('   ');
      expect(movies, isEmpty);
    });

    test('returns an empty list when nothing matches', () async {
      final List<Movie> movies = await dataSource.search('zzz_no_such_movie_zzz');
      expect(movies, isEmpty);
    });
  });

  group('fetchByGenre', () {
    test('only returns movies that actually contain the requested genre id', () async {
      const int actionGenreId = 28;
      final List<Movie> movies = await dataSource.fetchByGenre(actionGenreId);

      expect(movies, isNotEmpty);
      expect(
        movies.every((Movie m) => m.genreIds.contains(actionGenreId)),
        isTrue,
      );
    });

    test('returns an empty list for a genre id that matches nothing', () async {
      final List<Movie> movies = await dataSource.fetchByGenre(-1);
      expect(movies, isEmpty);
    });
  });

  group('fetchDetails', () {
    test('returns the movie with the matching id', () async {
      final Movie movie = await dataSource.fetchDetails(5);
      expect(movie.id, 5);
    });

    test('falls back to the first catalog movie for an unknown id', () async {
      final Movie fallback = await dataSource.fetchDetails(99999);
      final Movie first = await dataSource.fetchDetails(1);
      expect(fallback.id, first.id);
    });
  });

  group('fetchSimilar', () {
    test('never includes the movie itself, and returns at most 10', () async {
      final List<Movie> similar = await dataSource.fetchSimilar(3);

      expect(similar.length, lessThanOrEqualTo(10));
      expect(similar.any((Movie m) => m.id == 3), isFalse);
    });
  });

  group('fetchGenres', () {
    test('returns a non-empty, fixed genre catalog', () async {
      final genres = await dataSource.fetchGenres();
      expect(genres, isNotEmpty);
      expect(genres.map((g) => g.id).toSet().length, genres.length, reason: 'ids should be unique');
    });
  });

  group('fetchCredits', () {
    test('returns a non-empty cast list regardless of movie id', () async {
      final cast = await dataSource.fetchCredits(7);
      expect(cast, isNotEmpty);
    });
  });

  group('fetchReviews', () {
    test('returns the canned review pool', () async {
      final reviews = await dataSource.fetchReviews(1);
      expect(reviews, isNotEmpty);
    });
  });
}
