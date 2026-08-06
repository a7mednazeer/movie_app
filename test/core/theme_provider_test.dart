import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/core/theme/theme_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Mirrors the fire-and-forget async restore pattern in the notifier's
/// constructor — see the equivalent helper in `persistence_provider_test.dart`.
Future<void> _letRestoreComplete() => Future<void>.delayed(const Duration(milliseconds: 20));

void main() {
  setUp(() {
    // Start every test with no persisted preference at all.
    SharedPreferences.setMockInitialValues(<String, Object>{});
  });

  group('ThemeModeNotifier', () {
    test('defaults to dark mode when nothing is persisted', () async {
      final ThemeModeNotifier notifier = ThemeModeNotifier();
      await _letRestoreComplete();

      expect(notifier.state, ThemeMode.dark);

      notifier.dispose();
    });

    test('restores a previously persisted theme mode on construction', () async {
      SharedPreferences.setMockInitialValues(<String, Object>{'app_theme_mode': 'light'});

      final ThemeModeNotifier notifier = ThemeModeNotifier();
      await _letRestoreComplete();

      expect(notifier.state, ThemeMode.light);

      notifier.dispose();
    });

    test('falls back to dark for a corrupt/unrecognized persisted value', () async {
      SharedPreferences.setMockInitialValues(<String, Object>{'app_theme_mode': 'not_a_theme'});

      final ThemeModeNotifier notifier = ThemeModeNotifier();
      await _letRestoreComplete();

      expect(notifier.state, ThemeMode.dark);

      notifier.dispose();
    });

    test('setThemeMode updates state immediately and persists it', () async {
      final ThemeModeNotifier notifier = ThemeModeNotifier();
      await _letRestoreComplete();

      await notifier.setThemeMode(ThemeMode.light);
      expect(notifier.state, ThemeMode.light);

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      expect(prefs.getString('app_theme_mode'), 'light');

      notifier.dispose();
    });

    test('toggle flips between dark and light', () async {
      final ThemeModeNotifier notifier = ThemeModeNotifier();
      await _letRestoreComplete();
      expect(notifier.state, ThemeMode.dark);

      await notifier.toggle();
      expect(notifier.state, ThemeMode.light);

      await notifier.toggle();
      expect(notifier.state, ThemeMode.dark);

      notifier.dispose();
    });

    test('a persisted choice survives a fresh notifier instance', () async {
      final ThemeModeNotifier first = ThemeModeNotifier();
      await _letRestoreComplete();
      await first.setThemeMode(ThemeMode.light);
      first.dispose();

      final ThemeModeNotifier second = ThemeModeNotifier();
      await _letRestoreComplete();

      expect(second.state, ThemeMode.light);

      second.dispose();
    });
  });
}
