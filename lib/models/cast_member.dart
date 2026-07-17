import 'package:equatable/equatable.dart';

/// A single cast member credited on a movie.
class CastMember extends Equatable {
  const CastMember({
    required this.id,
    required this.name,
    required this.character,
    this.profilePath,
  });

  final int id;
  final String name;
  final String character;

  /// TMDB-style relative path; `null` falls back to a placeholder avatar.
  final String? profilePath;

  factory CastMember.fromJson(Map<String, dynamic> json) {
    return CastMember(
      id: json['id'] as int,
      name: json['name'] as String,
      character: (json['character'] as String?) ?? '',
      profilePath: json['profile_path'] as String?,
    );
  }

  @override
  List<Object?> get props => <Object?>[id, name, character];
}
