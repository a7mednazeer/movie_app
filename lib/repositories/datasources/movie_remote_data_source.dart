import 'package:dio/dio.dart';

import '../../core/network/api_client.dart';
import '../../core/network/api_endpoints.dart';
import '../../models/cast_member.dart';
import '../../models/genre.dart';
import '../../models/movie.dart';
import '../../models/review.dart';

/// The real, network-backed data source — calls The Movie Database
/// (TMDB) API via [ApiClient] and maps its JSON into our domain models.
///
/// Mirrors [DummyMovieDataSource]'s method shapes exactly, which is what
/// let [MovieRepositoryImpl] adopt this alongside the dummy source with
/// no changes to any Notifier/ViewModel/widget in the app.
class MovieRemoteDataSource {
  MovieRemoteDataSource({ApiClient? apiClient}) : _client = apiClient ?? ApiClient();

  final ApiClient _client;

  List<Movie> _parseMovieList(Response<dynamic> response) {
    final Map<String, dynamic> data = response.data as Map<String, dynamic>;
    final List<dynamic> results = (data['results'] as List<dynamic>?) ?? const <dynamic>[];
    return results
        .map((dynamic json) => Movie.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  Future<List<Movie>> fetchTrending() async {
    final Response<dynamic> response = await _client.get(ApiEndpoints.trending);
    return _parseMovieList(response);
  }

  Future<List<Movie>> fetchPopular({int page = 1}) async {
    final Response<dynamic> response = await _client.get(
      ApiEndpoints.popular,
      queryParameters: <String, dynamic>{'page': page},
    );
    return _parseMovieList(response);
  }

  Future<List<Movie>> fetchTopRated({int page = 1}) async {
    final Response<dynamic> response = await _client.get(
      ApiEndpoints.topRated,
      queryParameters: <String, dynamic>{'page': page},
    );
    return _parseMovieList(response);
  }

  Future<List<Movie>> fetchUpcoming({int page = 1}) async {
    final Response<dynamic> response = await _client.get(
      ApiEndpoints.upcoming,
      queryParameters: <String, dynamic>{'page': page},
    );
    return _parseMovieList(response);
  }

  /// TMDB has no anonymous "recommended for you" endpoint — real
  /// recommendations require a signed-in user's rating history, and this
  /// app has no accounts. As an honest, still-useful stand-in, this
  /// queries `/discover/movie` for well-reviewed, popular titles — the
  /// same "you might like" fallback real apps show a first-time user.
  Future<List<Movie>> fetchRecommended() async {
    final Response<dynamic> response = await _client.get(
      ApiEndpoints.discoverByGenre,
      queryParameters: <String, dynamic>{
        'sort_by': 'popularity.desc',
        'vote_count.gte': 500,
        'vote_average.gte': 6.5,
      },
    );
    return _parseMovieList(response);
  }

  Future<List<Movie>> fetchByGenre(int genreId, {int page = 1}) async {
    final Response<dynamic> response = await _client.get(
      ApiEndpoints.discoverByGenre,
      queryParameters: <String, dynamic>{
        'with_genres': genreId,
        'page': page,
        'sort_by': 'popularity.desc',
      },
    );
    return _parseMovieList(response);
  }

  Future<List<Movie>> search(String query, {int page = 1}) async {
    final Response<dynamic> response = await _client.get(
      ApiEndpoints.searchMovies,
      queryParameters: <String, dynamic>{'query': query, 'page': page},
    );
    return _parseMovieList(response);
  }

  /// Fetches full movie details, requesting videos in the same call
  /// (TMDB's `append_to_response`) so the trailer key is available
  /// without a second round-trip, then merges it into the returned
  /// [Movie] via `copyWith`.
  Future<Movie> fetchDetails(int movieId) async {
    final Response<dynamic> response = await _client.get(
      ApiEndpoints.movieDetails(movieId),
      queryParameters: <String, dynamic>{'append_to_response': 'videos'},
    );
    final Map<String, dynamic> data = response.data as Map<String, dynamic>;
    final Movie movie = Movie.fromJson(data);

    final String? videoKey = _extractTrailerKey(data['videos'] as Map<String, dynamic>?);
    return videoKey == null ? movie : movie.copyWith(videoKey: videoKey);
  }

  /// Prefers an official YouTube trailer; falls back to any YouTube
  /// video on the movie; returns `null` if nothing usable is found.
  String? _extractTrailerKey(Map<String, dynamic>? videosBlock) {
    final List<dynamic>? results = videosBlock?['results'] as List<dynamic>?;
    if (results == null || results.isEmpty) return null;

    final List<Map<String, dynamic>> videos = results.cast<Map<String, dynamic>>();

    final Map<String, dynamic> official = videos.firstWhere(
      (Map<String, dynamic> v) =>
          v['site'] == 'YouTube' && v['type'] == 'Trailer' && v['official'] == true,
      orElse: () => const <String, dynamic>{},
    );
    if (official.isNotEmpty) return official['key'] as String?;

    final Map<String, dynamic> anyYoutube = videos.firstWhere(
      (Map<String, dynamic> v) => v['site'] == 'YouTube',
      orElse: () => const <String, dynamic>{},
    );
    return anyYoutube.isNotEmpty ? anyYoutube['key'] as String? : null;
  }

  Future<List<Movie>> fetchSimilar(int movieId) async {
    final Response<dynamic> response = await _client.get(ApiEndpoints.movieSimilar(movieId));
    return _parseMovieList(response);
  }

  Future<List<CastMember>> fetchCredits(int movieId) async {
    final Response<dynamic> response = await _client.get(ApiEndpoints.movieCredits(movieId));
    final Map<String, dynamic> data = response.data as Map<String, dynamic>;
    final List<dynamic> cast = (data['cast'] as List<dynamic>?) ?? const <dynamic>[];
    // Top-billed 15 — TMDB's full cast list can run past a hundred names.
    return cast
        .take(15)
        .map((dynamic json) => CastMember.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  Future<List<Review>> fetchReviews(int movieId) async {
    final Response<dynamic> response = await _client.get(ApiEndpoints.movieReviews(movieId));
    final Map<String, dynamic> data = response.data as Map<String, dynamic>;
    final List<dynamic> results = (data['results'] as List<dynamic>?) ?? const <dynamic>[];
    return results
        .map((dynamic json) => Review.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  Future<List<Genre>> fetchGenres() async {
    final Response<dynamic> response = await _client.get(ApiEndpoints.genreList);
    final Map<String, dynamic> data = response.data as Map<String, dynamic>;
    final List<dynamic> genres = (data['genres'] as List<dynamic>?) ?? const <dynamic>[];
    return genres
        .map((dynamic json) => Genre.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}
