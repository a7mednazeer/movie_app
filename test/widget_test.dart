import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/main.dart';

void main() {
  testWidgets('MovieApp builds without exploding', (WidgetTester tester) async {
    await tester.pumpWidget(
      const ProviderScope(
        child: MovieApp(),
      ),
    );

    // Basic verification that the app launched.
    expect(find.byType(MovieApp), findsOneWidget);
  });
}
