import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/models/genre.dart';
import 'package:movie_app/models/movie.dart';

void main() {
  group('Movie.fromJson', () {
    test('parses a list-endpoint style response (genre_ids, no genres)', () {
      final Movie movie = Movie.fromJson(<String, dynamic>{
        'id': 42,
        'title': 'The Long Winter Road',
        'overview': 'A slow-burn drama about starting over.',
        'poster_path': '/abc123.jpg',
        'backdrop_path': '/def456.jpg',
        'release_date': '2022-03-14',
        'vote_average': 7.653,
        'vote_count': 1200,
        'genre_ids': <int>[18, 10749],
      });

      expect(movie.id, 42);
      expect(movie.title, 'The Long Winter Road');
      expect(movie.overview, 'A slow-burn drama about starting over.');
      expect(movie.posterPath, '/abc123.jpg');
      expect(movie.backdropPath, '/def456.jpg');
      expect(movie.releaseDate, DateTime(2022, 3, 14));
      expect(movie.voteAverage, closeTo(7.653, 0.0001));
      expect(movie.voteCount, 1200);
      expect(movie.genreIds, <int>[18, 10749]);
      expect(movie.genres, isEmpty);
      expect(movie.runtimeMinutes, isNull);
    });

    test('parses a details-endpoint style response (full genres, runtime)', () {
      final Movie movie = Movie.fromJson(<String, dynamic>{
        'id': 7,
        'title': 'Edge of Tomorrow City',
        'overview': 'Overview text.',
        'runtime': 128,
        'genres': <Map<String, dynamic>>[
          <String, dynamic>{'id': 28, 'name': 'Action'},
          <String, dynamic>{'id': 878, 'name': 'Sci-Fi'},
        ],
      });

      expect(movie.runtimeMinutes, 128);
      expect(movie.genres, <Genre>[
        const Genre(id: 28, name: 'Action'),
        const Genre(id: 878, name: 'Sci-Fi'),
      ]);
      // Details responses don't include genre_ids — should default empty.
      expect(movie.genreIds, isEmpty);
    });

    test('falls back to "name" then "Untitled" when title is missing', () {
      final Movie withName = Movie.fromJson(<String, dynamic>{
        'id': 1,
        'name': 'Some Show',
        'overview': '',
      });
      expect(withName.title, 'Some Show');

      final Movie withNeither = Movie.fromJson(<String, dynamic>{
        'id': 2,
        'overview': '',
      });
      expect(withNeither.title, 'Untitled');
    });

    test('missing optional fields default sensibly instead of throwing', () {
      final Movie movie = Movie.fromJson(<String, dynamic>{
        'id': 99,
        'title': 'Bare Bones',
      });

      expect(movie.overview, '');
      expect(movie.posterPath, isNull);
      expect(movie.backdropPath, isNull);
      expect(movie.releaseDate, isNull);
      expect(movie.voteAverage, 0);
      expect(movie.voteCount, 0);
      expect(movie.certification, isNull);
      expect(movie.videoKey, isNull);
    });

    test('an empty or unparseable release_date results in a null DateTime', () {
      final Movie empty = Movie.fromJson(<String, dynamic>{
        'id': 1,
        'title': 'X',
        'release_date': '',
      });
      expect(empty.releaseDate, isNull);

      final Movie garbage = Movie.fromJson(<String, dynamic>{
        'id': 1,
        'title': 'X',
        'release_date': 'not-a-date',
      });
      expect(garbage.releaseDate, isNull);
    });
  });

  group('Movie computed getters', () {
    test('posterUrl / backdropUrl are null when the path is null or empty', () {
      const Movie noPaths = Movie(id: 1, title: 'X', overview: '');
      expect(noPaths.posterUrl, isNull);
      expect(noPaths.backdropUrl, isNull);

      const Movie emptyPaths = Movie(
        id: 1,
        title: 'X',
        overview: '',
        posterPath: '',
        backdropPath: '',
      );
      expect(emptyPaths.posterUrl, isNull);
      expect(emptyPaths.backdropUrl, isNull);
    });

    test('posterUrl / backdropUrl build a full TMDB image CDN URL when set', () {
      const Movie movie = Movie(
        id: 1,
        title: 'X',
        overview: '',
        posterPath: '/poster.jpg',
        backdropPath: '/backdrop.jpg',
      );
      expect(movie.posterUrl, contains('/poster.jpg'));
      expect(movie.posterUrl, startsWith('https://'));
      expect(movie.backdropUrl, contains('/backdrop.jpg'));
    });

    test('releaseYear reads the year, or an em dash placeholder when unknown', () {
      final Movie withDate = Movie(
        id: 1,
        title: 'X',
        overview: '',
        releaseDate: DateTime(2019, 6, 1),
      );
      expect(withDate.releaseYear, '2019');

      const Movie withoutDate = Movie(id: 1, title: 'X', overview: '');
      expect(withoutDate.releaseYear, '—');
    });

    test('formattedRuntime handles zero, sub-hour, whole-hour, and mixed durations', () {
      const Movie none = Movie(id: 1, title: 'X', overview: '');
      expect(none.formattedRuntime, '');

      const Movie zero = Movie(id: 1, title: 'X', overview: '', runtimeMinutes: 0);
      expect(zero.formattedRuntime, '');

      const Movie under1h = Movie(id: 1, title: 'X', overview: '', runtimeMinutes: 45);
      expect(under1h.formattedRuntime, '45m');

      const Movie exact2h = Movie(id: 1, title: 'X', overview: '', runtimeMinutes: 120);
      expect(exact2h.formattedRuntime, '2h 0m');

      const Movie mixed = Movie(id: 1, title: 'X', overview: '', runtimeMinutes: 127);
      expect(mixed.formattedRuntime, '2h 7m');
    });

    test('formattedRating renders a single decimal place', () {
      const Movie movie = Movie(id: 1, title: 'X', overview: '', voteAverage: 7.6534);
      expect(movie.formattedRating, '7.7');

      const Movie whole = Movie(id: 1, title: 'X', overview: '', voteAverage: 8);
      expect(whole.formattedRating, '8.0');
    });

    test('trailerUrl is null without a videoKey, and a real YouTube URL with one', () {
      const Movie none = Movie(id: 1, title: 'X', overview: '');
      expect(none.trailerUrl, isNull);

      const Movie withTrailer = Movie(id: 1, title: 'X', overview: '', videoKey: 'abc123');
      expect(withTrailer.trailerUrl, 'https://www.youtube.com/watch?v=abc123');
    });
  });

  group('Movie.copyWith', () {
    test('overrides only the given fields, keeping everything else', () {
      const Movie original = Movie(id: 1, title: 'X', overview: 'Y', runtimeMinutes: 90);
      final Movie updated = original.copyWith(videoKey: 'xyz', certification: 'PG-13');

      expect(updated.id, original.id);
      expect(updated.title, original.title);
      expect(updated.runtimeMinutes, 90);
      expect(updated.videoKey, 'xyz');
      expect(updated.certification, 'PG-13');
    });
  });

  group('Movie equality', () {
    test('two movies with the same id/title/posterPath/voteAverage are equal', () {
      const Movie a = Movie(id: 1, title: 'X', overview: 'one overview', voteAverage: 5);
      const Movie b = Movie(id: 1, title: 'X', overview: 'a different overview', voteAverage: 5);
      expect(a, equals(b));
    });

    test('a different id makes movies unequal', () {
      const Movie a = Movie(id: 1, title: 'X', overview: '');
      const Movie b = Movie(id: 2, title: 'X', overview: '');
      expect(a, isNot(equals(b)));
    });
  });
}
