import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/errors/failures.dart';
import '../../../../models/movie.dart';
import '../../../../providers/favorites_provider.dart';
import '../../../../providers/repository_providers.dart';
import '../../../../repositories/movie_repository.dart';

/// The user's favorites, resolved from ids (see [favoritesProvider]) into
/// full [Movie] objects, most-recently-added first. Mirrors
/// `watchlistMoviesProvider`'s exact pattern — favorites and watchlist
/// are independent lists with the same resolution shape.
final FutureProvider<List<Movie>> favoriteMoviesProvider = FutureProvider<List<Movie>>((
  Ref ref,
) async {
  final Set<int> ids = ref.watch(favoritesProvider);
  if (ids.isEmpty) return const <Movie>[];

  final MovieRepository repo = ref.watch(movieRepositoryProvider);
  final List<int> orderedIds = ids.toList().reversed.toList();

  final List<Either<Failure, Movie>> results = await Future.wait(
    orderedIds.map((int id) => repo.getMovieDetails(id)),
  );

  return results
      .where((Either<Failure, Movie> either) => either.isRight())
      .map((Either<Failure, Movie> either) => either.getOrElse(() => throw StateError('unreachable')))
      .toList();
});
