import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/misc.dart';

import '../../../../core/utils/either_unwrap.dart';
import '../../../../models/movie.dart';
import '../../../../providers/genres_provider.dart';
import '../../../../providers/repository_providers.dart';
import '../../../../repositories/movie_repository.dart';

/// Each provider below is independent, so a failure or slow response in
/// one rail never blocks the others, and pull-to-refresh can invalidate
/// them all (or, in principle, just one) cheaply via [refreshHome].

final FutureProvider<List<Movie>> trendingMoviesProvider =
    FutureProvider<List<Movie>>((Ref ref) {
  final MovieRepository repo = ref.watch(movieRepositoryProvider);
  return unwrapEither(repo.getTrendingMovies());
});

final FutureProvider<List<Movie>> popularMoviesProvider =
    FutureProvider<List<Movie>>((Ref ref) {
  final MovieRepository repo = ref.watch(movieRepositoryProvider);
  return unwrapEither(repo.getPopularMovies());
});

final FutureProvider<List<Movie>> topRatedMoviesProvider =
    FutureProvider<List<Movie>>((Ref ref) {
  final MovieRepository repo = ref.watch(movieRepositoryProvider);
  return unwrapEither(repo.getTopRatedMovies());
});

final FutureProvider<List<Movie>> upcomingMoviesProvider =
    FutureProvider<List<Movie>>((Ref ref) {
  final MovieRepository repo = ref.watch(movieRepositoryProvider);
  return unwrapEither(repo.getUpcomingMovies());
});

final FutureProvider<List<Movie>> recommendedMoviesProvider =
    FutureProvider<List<Movie>>((Ref ref) {
  final MovieRepository repo = ref.watch(movieRepositoryProvider);
  return unwrapEither(repo.getRecommendedMovies());
});

/// All Home section providers, invalidated together by pull-to-refresh.
/// `genresProvider` is shared app-wide (see `providers/genres_provider.dart`)
/// since Browse's genre grid needs the exact same data.
final List<ProviderOrFamily> homeSectionProviders = <ProviderOrFamily>[
  trendingMoviesProvider,
  popularMoviesProvider,
  topRatedMoviesProvider,
  upcomingMoviesProvider,
  recommendedMoviesProvider,
  genresProvider,
];

/// Invalidates every Home provider and awaits them all — used by the
/// screen's [RefreshIndicator].
Future<void> refreshHome(WidgetRef ref) async {
  for (final ProviderOrFamily provider in homeSectionProviders) {
    ref.invalidate(provider);
  }
  await Future.wait<dynamic>(<Future<dynamic>>[
    ref.read(trendingMoviesProvider.future),
    ref.read(popularMoviesProvider.future),
    ref.read(topRatedMoviesProvider.future),
    ref.read(upcomingMoviesProvider.future),
    ref.read(recommendedMoviesProvider.future),
    ref.read(genresProvider.future),
  ]);
}
