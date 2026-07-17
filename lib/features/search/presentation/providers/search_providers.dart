import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/utils/either_unwrap.dart';
import '../../../../models/movie.dart';
import '../../../../providers/repository_providers.dart';
import '../../../../repositories/movie_repository.dart';

/// Live search results for the current (debounced) query.
///
/// `autoDispose` so stale query results don't linger in memory once the
/// user moves on, and `family`-keyed so each distinct query string gets
/// its own cached, independently-retryable request.
final searchResultsProvider =
    FutureProvider.autoDispose.family<List<Movie>, String>((ref, query) {
  final String trimmed = query.trim();
  if (trimmed.isEmpty) return Future<List<Movie>>.value(const <Movie>[]);

  final MovieRepository repo = ref.watch(movieRepositoryProvider);
  return unwrapEither(repo.searchMovies(trimmed));
});
