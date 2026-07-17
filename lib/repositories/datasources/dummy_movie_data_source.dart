import '../../models/genre.dart';
import '../../models/movie.dart';

/// Temporary in-memory data source standing in for the real TMDB API.
///
/// Every method matches the shape a `MovieRemoteDataSource` (backed by
/// [ApiClient]) would expose, and returns the same [Movie]/[Genre]
/// entities — so `MovieRepositoryImpl` can swap this out for the real
/// remote source later by changing a single constructor argument.
class DummyMovieDataSource {
  static const List<Genre> _genres = <Genre>[
    Genre(id: 28, name: 'Action'),
    Genre(id: 12, name: 'Adventure'),
    Genre(id: 16, name: 'Animation'),
    Genre(id: 35, name: 'Comedy'),
    Genre(id: 80, name: 'Crime'),
    Genre(id: 18, name: 'Drama'),
    Genre(id: 14, name: 'Fantasy'),
    Genre(id: 27, name: 'Horror'),
    Genre(id: 10749, name: 'Romance'),
    Genre(id: 878, name: 'Sci-Fi'),
    Genre(id: 53, name: 'Thriller'),
  ];

  static final List<Movie> _catalog = List<Movie>.generate(30, (int index) {
    final int id = index + 1;
    final Genre primaryGenre = _genres[index % _genres.length];
    final Genre secondaryGenre = _genres[(index + 3) % _genres.length];
    return Movie(
      id: id,
      title: _titles[index % _titles.length],
      overview: _overviews[index % _overviews.length],
      posterPath: null,
      backdropPath: null,
      releaseDate: DateTime(2016 + (index % 9), (index % 12) + 1, 10),
      voteAverage: 5.5 + ((index * 37) % 45) / 10,
      voteCount: 800 + (index * 137),
      runtimeMinutes: 95 + (index % 6) * 12,
      certification: _certifications[index % _certifications.length],
      genreIds: <int>[primaryGenre.id, secondaryGenre.id],
      genres: <Genre>[primaryGenre, secondaryGenre],
    );
  });

  static const List<String> _titles = <String>[
    'Edge of Tomorrow City',
    'The Last Lighthouse',
    'Silent Horizon',
    'Crimson Ascent',
    'Whispers in the Static',
    'Beyond the Northern Gate',
    'Paper Moon Rising',
    'The Glass Architect',
    'Nocturne for Strangers',
    'Ashes of Tomorrow',
    'The Cartographer\'s Daughter',
    'Iron Season',
    'Midnight Frequency',
    'The Wolves of January',
    'Echo Chamber',
    'A Thousand Small Fires',
    'The Quiet Defector',
    'Salt & Static',
    'Vantage Point Zero',
    'The Long Winter Road',
  ];

  static const List<String> _overviews = <String>[
    'When an unexplained signal reaches a remote outpost, a small crew '
        'must decide whether to answer it — or risk losing everything they '
        'came to protect.',
    'A disgraced detective is pulled back into the one case she couldn\'t '
        'close, only to discover the truth was closer than she ever '
        'imagined.',
    'Two estranged siblings inherit their father\'s failing business and '
        'must rebuild both the company and their relationship before it\'s '
        'too late.',
    'In a city built on secrets, a courier uncovers a conspiracy that '
        'reaches the very top — and now everyone wants what she carries.',
  ];

  static const List<String> _certifications = <String>[
    'PG', 'PG-13', 'R', 'PG-13', 'G',
  ];

  /// Simulates realistic network latency so loading/shimmer states are
  /// visible during development — remove once backed by a real API call.
  Future<void> _simulateLatency() =>
      Future<void>.delayed(const Duration(milliseconds: 650));

  Future<List<Movie>> fetchTrending() async {
    await _simulateLatency();
    return _catalog.sublist(0, 10);
  }

  Future<List<Movie>> fetchPopular({int page = 1}) async {
    await _simulateLatency();
    return _catalog.sublist(4, 16);
  }

  Future<List<Movie>> fetchTopRated({int page = 1}) async {
    await _simulateLatency();
    final List<Movie> sorted = List<Movie>.of(_catalog)
      ..sort((Movie a, Movie b) => b.voteAverage.compareTo(a.voteAverage));
    return sorted.take(12).toList();
  }

  Future<List<Movie>> fetchUpcoming({int page = 1}) async {
    await _simulateLatency();
    return _catalog.sublist(10, 20);
  }

  Future<List<Movie>> fetchRecommended() async {
    await _simulateLatency();
    return _catalog.sublist(6, 14);
  }

  Future<List<Movie>> fetchByGenre(int genreId, {int page = 1}) async {
    await _simulateLatency();
    return _catalog
        .where((Movie movie) => movie.genreIds.contains(genreId))
        .toList();
  }

  Future<List<Movie>> search(String query, {int page = 1}) async {
    await _simulateLatency();
    final String normalized = query.trim().toLowerCase();
    if (normalized.isEmpty) return const <Movie>[];
    return _catalog
        .where((Movie movie) => movie.title.toLowerCase().contains(normalized))
        .toList();
  }

  Future<Movie> fetchDetails(int movieId) async {
    await _simulateLatency();
    return _catalog.firstWhere(
      (Movie movie) => movie.id == movieId,
      orElse: () => _catalog.first,
    );
  }

  Future<List<Movie>> fetchSimilar(int movieId) async {
    await _simulateLatency();
    return _catalog.where((Movie movie) => movie.id != movieId).take(10).toList();
  }

  Future<List<Genre>> fetchGenres() async {
    await _simulateLatency();
    return _genres;
  }
}
