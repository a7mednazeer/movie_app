import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/models/cast_member.dart';

void main() {
  group('CastMember.fromJson', () {
    test('parses a full cast entry', () {
      final CastMember member = CastMember.fromJson(<String, dynamic>{
        'id': 101,
        'name': 'Elena Marsh',
        'character': 'Dr. Ava Kessler',
        'profile_path': '/marsh.jpg',
      });

      expect(member.id, 101);
      expect(member.name, 'Elena Marsh');
      expect(member.character, 'Dr. Ava Kessler');
      expect(member.profilePath, '/marsh.jpg');
    });

    test('defaults character to empty string and profilePath to null when absent', () {
      final CastMember member = CastMember.fromJson(<String, dynamic>{
        'id': 1,
        'name': 'Someone',
      });

      expect(member.character, '');
      expect(member.profilePath, isNull);
    });
  });

  group('CastMember equality', () {
    test('cast members with the same id/name/character are equal regardless of photo', () {
      const CastMember a = CastMember(
        id: 1,
        name: 'A',
        character: 'Hero',
        profilePath: '/one.jpg',
      );
      const CastMember b = CastMember(
        id: 1,
        name: 'A',
        character: 'Hero',
        profilePath: '/two.jpg',
      );
      expect(a, equals(b));
    });
  });
}
