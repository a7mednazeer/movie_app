import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/constants/app_strings.dart';
import 'package:movie_app/core/theme/app_theme.dart';
import 'package:movie_app/core/widgets/section_header.dart';

Widget _wrap(Widget child) {
  return MaterialApp(theme: AppTheme.dark, home: Scaffold(body: child));
}

void main() {
  // AppTheme renders text via GoogleFonts.getFont('Poppins', ...). Without
  // this, widget tests would try to fetch the font over the network (which
  // is blocked in the test environment) — this makes it fall back to the
  // platform default font instead, silently and instantly.
  setUpAll(() {
    GoogleFonts.config.allowRuntimeFetching = false;
  });

  testWidgets('renders the title', (WidgetTester tester) async {
    await tester.pumpWidget(_wrap(const SectionHeader(title: 'Trending Now')));

    expect(find.text('Trending Now'), findsOneWidget);
  });

  testWidgets('does not show "See All" when onSeeAll is omitted', (WidgetTester tester) async {
    await tester.pumpWidget(_wrap(const SectionHeader(title: 'Trending Now')));

    expect(find.text(AppStrings.seeAll), findsNothing);
  });

  testWidgets('shows "See All" and invokes the callback when tapped', (
    WidgetTester tester,
  ) async {
    int tapCount = 0;

    await tester.pumpWidget(
      _wrap(SectionHeader(title: 'Trending Now', onSeeAll: () => tapCount++)),
    );

    expect(find.text(AppStrings.seeAll), findsOneWidget);

    await tester.tap(find.text(AppStrings.seeAll));
    await tester.pump();

    expect(tapCount, 1);
  });
}
