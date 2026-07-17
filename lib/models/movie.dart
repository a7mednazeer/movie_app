import 'package:equatable/equatable.dart';

import '../core/network/api_endpoints.dart';
import 'genre.dart';

/// Core movie entity used across every feature (Home, Details, Search,
/// Browse, Watchlist).
///
/// Shaped to match TMDB's JSON responses so wiring up the real API later
/// is a drop-in replacement for [DummyMovieDataSource] — no UI or
/// provider code needs to change.
class Movie extends Equatable {
  const Movie({
    required this.id,
    required this.title,
    required this.overview,
    this.posterPath,
    this.backdropPath,
    this.releaseDate,
    this.voteAverage = 0,
    this.voteCount = 0,
    this.runtimeMinutes,
    this.genres = const <Genre>[],
    this.genreIds = const <int>[],
    this.certification,
    this.videoKey,
  });

  final int id;
  final String title;
  final String overview;

  /// TMDB-style relative path (e.g. `/abc123.jpg`), or `null` if unknown —
  /// in which case the UI falls back to the local placeholder asset.
  final String? posterPath;
  final String? backdropPath;

  final DateTime? releaseDate;
  final double voteAverage;
  final int voteCount;
  final int? runtimeMinutes;

  /// Fully resolved genres (populated on the details endpoint).
  final List<Genre> genres;

  /// Raw genre ids (populated on list endpoints; resolve against the
  /// genre list provider when full names are needed).
  final List<int> genreIds;

  /// Content rating, e.g. `PG-13`. `null` when unknown.
  final String? certification;

  /// YouTube video key for the trailer (from TMDB's `/movie/{id}/videos`).
  /// `null` when no trailer is available yet.
  final String? videoKey;

  String? get trailerUrl =>
      (videoKey == null || videoKey!.isEmpty) ? null : 'https://www.youtube.com/watch?v=$videoKey';

  String? get posterUrl =>
      (posterPath == null || posterPath!.isEmpty) ? null : ApiEndpoints.posterUrl(posterPath!);

  String? get backdropUrl => (backdropPath == null || backdropPath!.isEmpty)
      ? null
      : ApiEndpoints.backdropUrl(backdropPath!);

  String get releaseYear =>
      releaseDate != null ? releaseDate!.year.toString() : '—';

  String get formattedRuntime {
    if (runtimeMinutes == null || runtimeMinutes! <= 0) return '';
    final int hours = runtimeMinutes! ~/ 60;
    final int minutes = runtimeMinutes! % 60;
    if (hours == 0) return '${minutes}m';
    return '${hours}h ${minutes}m';
  }

  String get formattedRating => voteAverage.toStreamRating();

  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      id: json['id'] as int,
      title: (json['title'] ?? json['name'] ?? 'Untitled') as String,
      overview: (json['overview'] as String?) ?? '',
      posterPath: json['poster_path'] as String?,
      backdropPath: json['backdrop_path'] as String?,
      releaseDate: _parseDate(json['release_date'] as String?),
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0,
      voteCount: (json['vote_count'] as num?)?.toInt() ?? 0,
      runtimeMinutes: (json['runtime'] as num?)?.toInt(),
      certification: json['certification'] as String?,
      videoKey: json['video_key'] as String?,
      genres: json['genres'] is List
          ? (json['genres'] as List<dynamic>)
              .map((dynamic g) => Genre.fromJson(g as Map<String, dynamic>))
              .toList()
          : const <Genre>[],
      genreIds: json['genre_ids'] is List
          ? (json['genre_ids'] as List<dynamic>).cast<int>()
          : const <int>[],
    );
  }

  static DateTime? _parseDate(String? raw) {
    if (raw == null || raw.isEmpty) return null;
    return DateTime.tryParse(raw);
  }

  Movie copyWith({
    List<Genre>? genres,
    int? runtimeMinutes,
    String? certification,
    String? videoKey,
  }) {
    return Movie(
      id: id,
      title: title,
      overview: overview,
      posterPath: posterPath,
      backdropPath: backdropPath,
      releaseDate: releaseDate,
      voteAverage: voteAverage,
      voteCount: voteCount,
      runtimeMinutes: runtimeMinutes ?? this.runtimeMinutes,
      genres: genres ?? this.genres,
      genreIds: genreIds,
      certification: certification ?? this.certification,
      videoKey: videoKey ?? this.videoKey,
    );
  }

  @override
  List<Object?> get props => <Object?>[id, title, posterPath, voteAverage];
}

extension on double {
  /// Formats a 0–10 TMDB score as a single decimal, e.g. `7.7`.
  String toStreamRating() => toStringAsFixed(1);
}
