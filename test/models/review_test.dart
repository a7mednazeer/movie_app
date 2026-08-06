import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/models/review.dart';

void main() {
  group('Review.fromJson', () {
    test('parses a full TMDB-shaped review, including nested author_details', () {
      final Review review = Review.fromJson(<String, dynamic>{
        'id': 'r1',
        'author': 'CinemaWanderer',
        'content': 'A confident, atmospheric ride.',
        'created_at': '2024-03-02T10:00:00.000Z',
        'author_details': <String, dynamic>{
          'rating': 8.5,
          'avatar_path': '/avatar.jpg',
        },
      });

      expect(review.id, 'r1');
      expect(review.author, 'CinemaWanderer');
      expect(review.content, 'A confident, atmospheric ride.');
      expect(review.rating, 8.5);
      expect(review.avatarPath, '/avatar.jpg');
      expect(review.createdAt, DateTime.tryParse('2024-03-02T10:00:00.000Z'));
    });

    test('defaults author to "Anonymous" and content to empty when missing', () {
      final Review review = Review.fromJson(<String, dynamic>{'id': 'r2'});
      expect(review.author, 'Anonymous');
      expect(review.content, '');
    });

    test('handles a missing author_details block (no rating, no avatar)', () {
      final Review review = Review.fromJson(<String, dynamic>{
        'id': 'r3',
        'author': 'someone',
        'content': 'Fine.',
      });
      expect(review.rating, isNull);
      expect(review.avatarPath, isNull);
    });

    test('an unparseable created_at results in a null DateTime rather than throwing', () {
      final Review review = Review.fromJson(<String, dynamic>{
        'id': 'r4',
        'created_at': 'not-a-date',
      });
      expect(review.createdAt, isNull);
    });
  });
}
