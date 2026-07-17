import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/utils/either_unwrap.dart';
import '../models/genre.dart';
import '../repositories/movie_repository.dart';
import 'repository_providers.dart';

/// The full genre catalog, shared across every feature that needs it
/// (Home's Categories row, Browse's genre grid, Movie Details' genre
/// chips) so it's fetched — and cached — exactly once.
final FutureProvider<List<Genre>> genresProvider = FutureProvider<List<Genre>>((
  Ref ref,
) {
  final MovieRepository repo = ref.watch(movieRepositoryProvider);
  return unwrapEither(repo.getGenres());
});
