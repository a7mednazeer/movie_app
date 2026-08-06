import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/core/constants/app_strings.dart';
import 'package:movie_app/core/errors/failures.dart';
import 'package:movie_app/core/theme/app_theme.dart';
import 'package:movie_app/core/widgets/app_error_view.dart';

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

  group('InlineErrorView', () {
    testWidgets('shows the generic message and error icon when no error is given', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(_wrap(InlineErrorView(onRetry: () {})));

      expect(find.text(AppStrings.genericErrorSubtitle), findsOneWidget);
      expect(find.byIcon(Icons.error_outline_rounded), findsOneWidget);
      expect(find.byIcon(Icons.wifi_off_rounded), findsNothing);
    });

    testWidgets('shows a distinct offline message and Wi-Fi-off icon for a NetworkFailure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        _wrap(InlineErrorView(onRetry: () {}, error: const NetworkFailure())),
      );

      expect(find.text(AppStrings.noInternetSubtitle), findsOneWidget);
      expect(find.byIcon(Icons.wifi_off_rounded), findsOneWidget);
      expect(find.byIcon(Icons.error_outline_rounded), findsNothing);
    });

    testWidgets('keeps the generic icon/message for a non-network Failure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        _wrap(InlineErrorView(onRetry: () {}, error: const ServerFailure())),
      );

      expect(find.byIcon(Icons.error_outline_rounded), findsOneWidget);
      expect(find.byIcon(Icons.wifi_off_rounded), findsNothing);
    });

    testWidgets('an explicit message always wins, even with a NetworkFailure', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        _wrap(
          InlineErrorView(
            onRetry: () {},
            error: const NetworkFailure(),
            message: 'Custom override',
          ),
        ),
      );

      expect(find.text('Custom override'), findsOneWidget);
      expect(find.text(AppStrings.noInternetSubtitle), findsNothing);
    });

    testWidgets('tapping Retry invokes onRetry', (WidgetTester tester) async {
      int retryCount = 0;

      await tester.pumpWidget(_wrap(InlineErrorView(onRetry: () => retryCount++)));

      await tester.tap(find.text(AppStrings.retry));
      await tester.pump();

      expect(retryCount, 1);
    });
  });

  group('FullScreenStateView', () {
    testWidgets('renders the title and subtitle', (WidgetTester tester) async {
      await tester.pumpWidget(
        _wrap(
          const FullScreenStateView(
            icon: Icons.search_rounded,
            title: 'Nothing here',
            subtitle: 'Try again later.',
          ),
        ),
      );

      expect(find.text('Nothing here'), findsOneWidget);
      expect(find.text('Try again later.'), findsOneWidget);
    });

    testWidgets('falls back to a plain icon when no illustration is given', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        _wrap(
          const FullScreenStateView(
            icon: Icons.search_rounded,
            title: 'Nothing here',
            subtitle: 'Try again later.',
          ),
        ),
      );

      expect(find.byIcon(Icons.search_rounded), findsOneWidget);
      expect(find.byType(SvgPicture), findsNothing);
    });

    testWidgets('renders an SvgPicture instead of the icon when illustrationAsset is given', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        _wrap(
          const FullScreenStateView(
            icon: Icons.search_rounded,
            illustrationAsset: 'assets/images/search_illustration.svg',
            title: 'Nothing here',
            subtitle: 'Try again later.',
          ),
        ),
      );

      expect(find.byType(SvgPicture), findsOneWidget);
      expect(find.byIcon(Icons.search_rounded), findsNothing);
    });

    testWidgets('shows no retry button when onRetry is omitted', (WidgetTester tester) async {
      await tester.pumpWidget(
        _wrap(
          const FullScreenStateView(
            icon: Icons.search_rounded,
            title: 'Nothing here',
            subtitle: 'Try again later.',
          ),
        ),
      );

      expect(find.byType(ElevatedButton), findsNothing);
    });

    testWidgets('shows a retry button that invokes onRetry when tapped', (
      WidgetTester tester,
    ) async {
      int retryCount = 0;

      await tester.pumpWidget(
        _wrap(
          FullScreenStateView(
            icon: Icons.search_rounded,
            title: 'Nothing here',
            subtitle: 'Try again later.',
            onRetry: () => retryCount++,
          ),
        ),
      );

      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      expect(retryCount, 1);
    });
  });
}
