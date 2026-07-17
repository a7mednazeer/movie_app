import 'package:equatable/equatable.dart';

/// A single user review for a movie.
class Review extends Equatable {
  const Review({
    required this.id,
    required this.author,
    required this.content,
    this.rating,
    this.createdAt,
    this.avatarPath,
  });

  final String id;
  final String author;
  final String content;

  /// 0–10 TMDB-style score, `null` if the reviewer left no rating.
  final double? rating;
  final DateTime? createdAt;
  final String? avatarPath;

  factory Review.fromJson(Map<String, dynamic> json) {
    final Map<String, dynamic>? authorDetails =
        json['author_details'] as Map<String, dynamic>?;
    return Review(
      id: json['id'] as String,
      author: (json['author'] as String?) ?? 'Anonymous',
      content: (json['content'] as String?) ?? '',
      rating: (authorDetails?['rating'] as num?)?.toDouble(),
      createdAt: DateTime.tryParse((json['created_at'] as String?) ?? ''),
      avatarPath: authorDetails?['avatar_path'] as String?,
    );
  }

  @override
  List<Object?> get props => <Object?>[id, author, content];
}
