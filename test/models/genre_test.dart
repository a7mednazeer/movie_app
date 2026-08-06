import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/models/genre.dart';

void main() {
  group('Genre.fromJson', () {
    test('parses id and name', () {
      final Genre genre = Genre.fromJson(<String, dynamic>{'id': 28, 'name': 'Action'});
      expect(genre.id, 28);
      expect(genre.name, 'Action');
    });
  });

  group('Genre.toJson', () {
    test('round-trips through fromJson', () {
      const Genre original = Genre(id: 18, name: 'Drama');
      final Genre restored = Genre.fromJson(original.toJson());
      expect(restored, equals(original));
    });
  });

  group('Genre equality', () {
    test('genres with the same id and name are equal', () {
      const Genre a = Genre(id: 1, name: 'Action');
      const Genre b = Genre(id: 1, name: 'Action');
      expect(a, equals(b));
    });

    test('genres with a different id are not equal, even with the same name', () {
      const Genre a = Genre(id: 1, name: 'Action');
      const Genre b = Genre(id: 2, name: 'Action');
      expect(a, isNot(equals(b)));
    });
  });
}
