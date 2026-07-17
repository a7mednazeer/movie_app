/// Centralized API endpoint definitions.
///
/// Pre-wired for The Movie Database (TMDB) API. Swap [baseUrl] and
/// [apiKey] (ideally injected via `--dart-define`, never hardcoded in
/// source control) to point at a real backend — every repository already
/// consumes these constants, so no other file needs to change.
abstract final class ApiEndpoints {
  static const String baseUrl = 'https://api.themoviedb.org/3';

  /// Provide via `--dart-define=TMDB_API_KEY=your_key`.
  static const String apiKey = String.fromEnvironment('TMDB_API_KEY');

  static const String imageBaseUrl = 'https://image.tmdb.org/t/p';
  static const String posterSize = 'w500';
  static const String backdropSize = 'w1280';

  static String posterUrl(String path) => '$imageBaseUrl/$posterSize$path';

  static String backdropUrl(String path) => '$imageBaseUrl/$backdropSize$path';

  // Movie lists.
  static const String trending = '/trending/movie/week';
  static const String popular = '/movie/popular';
  static const String topRated = '/movie/top_rated';
  static const String upcoming = '/movie/upcoming';
  static const String nowPlaying = '/movie/now_playing';

  // Movie details.
  static String movieDetails(int id) => '/movie/$id';
  static String movieCredits(int id) => '/movie/$id/credits';
  static String movieSimilar(int id) => '/movie/$id/similar';
  static String movieReviews(int id) => '/movie/$id/reviews';
  static String movieVideos(int id) => '/movie/$id/videos';

  // Genres / browse.
  static const String genreList = '/genre/movie/list';
  static const String discoverByGenre = '/discover/movie';

  // Search.
  static const String searchMovies = '/search/movie';

  const ApiEndpoints._();
}
