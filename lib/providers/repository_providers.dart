import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/network/api_client.dart';
import '../repositories/movie_repository.dart';
import '../repositories/movie_repository_impl.dart';

/// Single shared [ApiClient] instance for the whole app.
final Provider<ApiClient> apiClientProvider = Provider<ApiClient>((Ref ref) {
  return ApiClient();
});

/// The app-wide [MovieRepository] dependency. Every feature reads through
/// this provider rather than constructing [MovieRepositoryImpl] directly,
/// which is what makes swapping in the real API (or mocking in tests) a
/// one-line change.
final Provider<MovieRepository> movieRepositoryProvider = Provider<MovieRepository>((
  Ref ref,
) {
  // `apiClientProvider` is already wired up here — once a real
  // `MovieRemoteDataSource` exists, pass `ref.watch(apiClientProvider)`
  // into it and swap it into `MovieRepositoryImpl`'s constructor.
  return MovieRepositoryImpl();
});
