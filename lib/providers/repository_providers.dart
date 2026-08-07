import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../core/network/api_client.dart';
import '../features/settings/presentation/providers/language_provider.dart';
import '../repositories/datasources/movie_remote_data_source.dart';
import '../repositories/movie_repository.dart';
import '../repositories/movie_repository_impl.dart';

/// Single shared [ApiClient] instance for the whole app.
final Provider<ApiClient> apiClientProvider = Provider<ApiClient>((Ref ref) {
  return ApiClient();
});

/// The app-wide [MovieRepository] dependency. Every feature reads through
/// this provider rather than constructing [MovieRepositoryImpl] directly,
/// which is what makes swapping data sources (or mocking in tests) a
/// one-line change here instead of a hunt through the app.
final Provider<MovieRepository> movieRepositoryProvider = Provider<MovieRepository>((
  Ref ref,
) {
  final ApiClient apiClient = ref.watch(apiClientProvider);
  final Locale? locale = ref.watch(languageProvider);
  final String language = locale?.languageCode ?? 'en';

  return MovieRepositoryImpl(
    language: language,
    remoteDataSource: MovieRemoteDataSource(
      apiClient: apiClient,
      language: language,
    ),
  );
});
