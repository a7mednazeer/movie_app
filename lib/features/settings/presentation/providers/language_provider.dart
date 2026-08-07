import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// One entry per language the app ships real translations for.
///
/// [locale] must match one of `AppLocalizations.supportedLocales` (which
/// is generated straight from `lib/l10n/app_*.arb` — see `l10n.yaml`), so
/// adding a language is: drop in a new ARB file, then add one line here.
enum AppLanguage {
  english(Locale('en'), 'English'),
  spanish(Locale('es'), 'Español'),
  french(Locale('fr'), 'Français'),
  german(Locale('de'), 'Deutsch'),
  italian(Locale('it'), 'Italiano'),
  russian(Locale('ru'), 'Русский'),
  turkish(Locale('tr'), 'Türkçe'),
  hindi(Locale('hi'), 'हिन्दी'),
  chinese(Locale('zh'), '中文'),
  portuguese(Locale('pt'), 'Português'),
  dutch(Locale('nl'), 'Nederlands'),
  korean(Locale('ko'), '한국어'),
  arabic(Locale('ar'), 'العربية');

  const AppLanguage(this.locale, this.label);

  final Locale locale;
  final String label;

  static AppLanguage fromLocale(Locale locale) {
    return AppLanguage.values.firstWhere(
      (AppLanguage lang) => lang.locale.languageCode == locale.languageCode,
      orElse: () => AppLanguage.english,
    );
  }
}

/// Persists and exposes the user's chosen app language as a real
/// [Locale], read directly by `MaterialApp.router(locale: ...)` in
/// `main.dart`.
///
/// Defaults to `null`, meaning "follow the device's system language" —
/// resolved against our supported list by `localeResolutionCallback`.
/// Once the user picks a language explicitly, that choice is persisted
/// and overrides the system language on every subsequent launch.
class LanguageNotifier extends StateNotifier<Locale?> {
  LanguageNotifier() : super(null) {
    _restore();
  }

  static const String _prefsKey = 'app_language_code';

  Future<void> _restore() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? saved = prefs.getString(_prefsKey);
    if (saved == null) return;
    state = Locale(saved);
  }

  Future<void> select(AppLanguage language) async {
    state = language.locale;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_prefsKey, language.locale.languageCode);
  }

  /// Reverts to following the device's system language.
  Future<void> useSystemLanguage() async {
    state = null;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_prefsKey);
  }
}

final StateNotifierProvider<LanguageNotifier, Locale?> languageProvider =
    StateNotifierProvider<LanguageNotifier, Locale?>(
  (Ref ref) => LanguageNotifier(),
);
