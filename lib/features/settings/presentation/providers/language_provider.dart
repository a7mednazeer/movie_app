import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Every language offered in Settings' language picker.
///
/// Only [AppLanguage.english] is wired to real content today — the
/// others are shown (clearly labeled "Coming soon") so the picker UI is
/// real and complete, without pretending the app is translated when it
/// isn't.
enum AppLanguage {
  english('English', 'en'),
  spanish('Español', 'es'),
  french('Français', 'fr'),
  arabic('العربية', 'ar');

  const AppLanguage(this.label, this.code);

  final String label;
  final String code;

  bool get isAvailable => this == AppLanguage.english;
}

class LanguageNotifier extends StateNotifier<AppLanguage> {
  LanguageNotifier() : super(AppLanguage.english) {
    _restore();
  }

  static const String _prefsKey = 'app_language';

  Future<void> _restore() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? saved = prefs.getString(_prefsKey);
    if (saved == null) return;
    state = AppLanguage.values.firstWhere(
      (AppLanguage lang) => lang.code == saved,
      orElse: () => AppLanguage.english,
    );
  }

  Future<void> select(AppLanguage language) async {
    if (!language.isAvailable) return;
    state = language;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(_prefsKey, language.code);
  }
}

final StateNotifierProvider<LanguageNotifier, AppLanguage> languageProvider =
    StateNotifierProvider<LanguageNotifier, AppLanguage>(
  (Ref ref) => LanguageNotifier(),
);
