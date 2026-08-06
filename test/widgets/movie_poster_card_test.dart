import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/theme/app_theme.dart';
import 'package:movie_app/core/widgets/movie_poster_card.dart';
import 'package:movie_app/models/movie.dart';

const Movie _movie = Movie(
  id: 7,
  title: 'The Long Winter Road',
  overview: 'A slow-burn drama.',
  voteAverage: 7.6,
);

Widget _wrap(Widget child) {
  return MaterialApp(
    theme: AppTheme.dark,
    home: Scaffold(body: Center(child: child)),
  );
}

void main() {
  // AppTheme renders text via GoogleFonts.getFont('Poppins', ...). Without
  // this, widget tests would try to fetch the font over the network (which
  // is blocked in the test environment) — this makes it fall back to the
  // platform default font instead, silently and instantly.
  setUpAll(() {
    GoogleFonts.config.allowRuntimeFetching = false;
  });

  testWidgets('shows the title, release year, and formatted rating', (WidgetTester tester) async {
    await tester.pumpWidget(
      _wrap(MoviePosterCard(movie: _movie, onTap: () {})),
    );

    expect(find.text('The Long Winter Road'), findsOneWidget);
    expect(find.text('—'), findsOneWidget); // no releaseDate set -> em dash placeholder
    expect(find.text('7.6'), findsOneWidget);
  });

  testWidgets('falls back to a plain icon when there is no poster image', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      _wrap(MoviePosterCard(movie: _movie, onTap: () {})),
    );

    // No network image widget should be attempted when posterPath is null.
    expect(find.byType(Image), findsNothing);
    expect(find.byIcon(Icons.movie_creation_outlined), findsOneWidget);
  });

  testWidgets('tapping the card invokes onTap', (WidgetTester tester) async {
    int tapCount = 0;

    await tester.pumpWidget(
      _wrap(MoviePosterCard(movie: _movie, onTap: () => tapCount++)),
    );

    await tester.tap(find.text('The Long Winter Road'));
    await tester.pump();

    expect(tapCount, 1);
  });

  testWidgets(
    'tapping the bookmark icon invokes onToggleSaved with the movie id, not onTap',
    (WidgetTester tester) async {
      int tapCount = 0;
      int? toggledId;

      await tester.pumpWidget(
        _wrap(
          MoviePosterCard(
            movie: _movie,
            onTap: () => tapCount++,
            onToggleSaved: (int id) => toggledId = id,
          ),
        ),
      );

      expect(find.byIcon(Icons.bookmark_border_rounded), findsOneWidget);

      await tester.tap(find.byIcon(Icons.bookmark_border_rounded));
      await tester.pump();

      expect(toggledId, 7);
      expect(tapCount, 0, reason: 'tapping the bookmark button should not also trigger onTap');
    },
  );

  testWidgets('shows a filled bookmark icon when isSaved is true', (WidgetTester tester) async {
    await tester.pumpWidget(
      _wrap(MoviePosterCard(movie: _movie, onTap: () {}, isSaved: true, onToggleSaved: (_) {})),
    );

    expect(find.byIcon(Icons.bookmark_rounded), findsOneWidget);
    expect(find.byIcon(Icons.bookmark_border_rounded), findsNothing);
  });
}
