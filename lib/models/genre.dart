import 'package:equatable/equatable.dart';

/// A movie genre (e.g. "Action", "Drama"), matching TMDB's `/genre/movie/list`.
class Genre extends Equatable {
  const Genre({required this.id, required this.name});

  final int id;
  final String name;

  factory Genre.fromJson(Map<String, dynamic> json) {
    return Genre(
      id: json['id'] as int,
      name: json['name'] as String,
    );
  }

  Map<String, dynamic> toJson() => <String, dynamic>{'id': id, 'name': name};

  @override
  List<Object?> get props => <Object?>[id, name];
}
