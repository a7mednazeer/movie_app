import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/theme/app_theme.dart';
import 'package:movie_app/core/widgets/section_header.dart';
import 'package:movie_app/l10n/generated/app_localizations.dart';

Widget _wrap(Widget child) {
  return MaterialApp(
    theme: AppTheme.dark,
    locale: const Locale('en'),
    supportedLocales: AppLocalizations.supportedLocales,
    localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ],
    home: Scaffold(body: child),
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

  // Pulled from the real, generated AppLocalizations rather than hardcoded,
  // so this test can't silently drift from the actual English translation.
  late AppLocalizations en;

  setUpAll(() async {
    en = await AppLocalizations.delegate.load(const Locale('en'));
  });

  testWidgets('renders the title', (WidgetTester tester) async {
    await tester.pumpWidget(_wrap(const SectionHeader(title: 'Trending Now')));

    expect(find.text('Trending Now'), findsOneWidget);
  });

  testWidgets('does not show "See All" when onSeeAll is omitted', (WidgetTester tester) async {
    await tester.pumpWidget(_wrap(const SectionHeader(title: 'Trending Now')));

    expect(find.text(en.seeAll), findsNothing);
  });

  testWidgets('shows "See All" and invokes the callback when tapped', (
    WidgetTester tester,
  ) async {
    int tapCount = 0;

    await tester.pumpWidget(
      _wrap(SectionHeader(title: 'Trending Now', onSeeAll: () => tapCount++)),
    );

    expect(find.text(en.seeAll), findsOneWidget);

    await tester.tap(find.text(en.seeAll));
    await tester.pump();

    expect(tapCount, 1);
  });
}
