import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/core/errors/failures.dart';
import 'package:movie_app/features/home/presentation/providers/home_providers.dart';
import 'package:movie_app/models/genre.dart';
import 'package:movie_app/models/movie.dart';
import 'package:movie_app/providers/genres_provider.dart';
import 'package:movie_app/providers/repository_providers.dart';

import '../fakes/fake_movie_repository.dart';

const Movie _sampleMovie = Movie(id: 1, title: 'Sample', overview: 'An overview.');
const Genre _sampleGenre = Genre(id: 28, name: 'Action');

void main() {
  late FakeMovieRepository fakeRepo;
  late ProviderContainer container;

  setUp(() {
    fakeRepo = FakeMovieRepository();
    container = ProviderContainer(
      overrides: <Override>[movieRepositoryProvider.overrideWithValue(fakeRepo)],
    );
    addTearDown(container.dispose);
  });

  group('trendingMoviesProvider', () {
    test("resolves to the repository's data on success", () async {
      fakeRepo.trending = const <Movie>[_sampleMovie];

      final List<Movie> movies = await container.read(trendingMoviesProvider.future);

      expect(movies, <Movie>[_sampleMovie]);
    });

    test("surfaces the repository's Failure as an AsyncError", () async {
      fakeRepo.failWith = const NetworkFailure('offline');

      // Trigger the provider and wait for the microtask to complete the future.
      container.read(trendingMoviesProvider);
      await Future<void>.delayed(Duration.zero);

      final state = container.read(trendingMoviesProvider);
      expect(state.hasError, isTrue);
      expect(state.error, isA<NetworkFailure>());
    });
  });

  group('genresProvider (shared across Home/Browse)', () {
    test('resolves independently of the movie rails', () async {
      fakeRepo.genres = const <Genre>[_sampleGenre];

      final List<Genre> genres = await container.read(genresProvider.future);

      expect(genres, <Genre>[_sampleGenre]);
    });
  });

  group('Home section providers all list themselves in homeSectionProviders', () {
    test('so refreshHome (which iterates this list) actually covers every rail', () {
      expect(homeSectionProviders, contains(trendingMoviesProvider));
      expect(homeSectionProviders, contains(popularMoviesProvider));
      expect(homeSectionProviders, contains(topRatedMoviesProvider));
      expect(homeSectionProviders, contains(upcomingMoviesProvider));
      expect(homeSectionProviders, contains(recommendedMoviesProvider));
      expect(homeSectionProviders, contains(genresProvider));
      expect(homeSectionProviders, hasLength(6));
    });
  });

  group('Invalidating a Home provider (the mechanism refreshHome relies on)', () {
    test('causes it to refetch from the repository rather than reuse the cached value', () async {
      fakeRepo.trending = const <Movie>[_sampleMovie];
      await container.read(trendingMoviesProvider.future);
      expect(fakeRepo.callCounts['getTrendingMovies'], 1);

      container.invalidate(trendingMoviesProvider);
      await container.read(trendingMoviesProvider.future);

      expect(fakeRepo.callCounts['getTrendingMovies'], 2);
    });

    test('one rail failing does not affect a sibling rail', () async {
      fakeRepo.trending = const <Movie>[_sampleMovie];
      fakeRepo.popular = const <Movie>[_sampleMovie];

      final List<Movie> popular = await container.read(popularMoviesProvider.future);
      expect(popular, <Movie>[_sampleMovie]);

      // Now make every *future* call fail — popular is already cached and
      // resolved, so it should stay that way.
      fakeRepo.failWith = const ServerFailure('boom');
      final AsyncValue<List<Movie>> stillCachedPopular = container.read(popularMoviesProvider);
      expect(stillCachedPopular.hasValue, isTrue);
      expect(stillCachedPopular.value, <Movie>[_sampleMovie]);
    });
  });
}
