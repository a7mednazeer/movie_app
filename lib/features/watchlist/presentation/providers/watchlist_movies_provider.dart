import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/errors/failures.dart';
import '../../../../models/movie.dart';
import '../../../../providers/repository_providers.dart';
import '../../../../providers/watchlist_provider.dart';
import '../../../../repositories/movie_repository.dart';

/// The user's watchlist, resolved from ids (see [watchlistProvider]) into
/// full [Movie] objects, most-recently-added first.
///
/// Re-fetches whenever [watchlistProvider] changes (a movie is added or
/// removed), and fetches every id in parallel via `Future.wait` rather
/// than sequentially, so the wait time doesn't scale with list length.
final FutureProvider<List<Movie>> watchlistMoviesProvider = FutureProvider<List<Movie>>((
  Ref ref,
) async {
  final Set<int> ids = ref.watch(watchlistProvider);
  if (ids.isEmpty) return const <Movie>[];

  final MovieRepository repo = ref.watch(movieRepositoryProvider);
  // `ids` is a LinkedHashSet (insertion order), so reversing puts the
  // most recently added movie first.
  final List<int> orderedIds = ids.toList().reversed.toList();

  final List<Either<Failure, Movie>> results = await Future.wait(
    orderedIds.map((int id) => repo.getMovieDetails(id)),
  );

  return results
      .where((Either<Failure, Movie> either) => either.isRight())
      .map(
        (Either<Failure, Movie> either) =>
            either.fold((Failure f) => throw StateError('unreachable'), (Movie m) => m),
      )
      .toList();
});
