import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Persists the user's recent search terms (most recent first, capped at
/// 10, case-insensitively de-duplicated) so they survive app restarts.
class RecentSearchesNotifier extends StateNotifier<List<String>> {
  RecentSearchesNotifier() : super(const <String>[]) {
    _restore();
  }

  static const String _prefsKey = 'recent_searches';
  static const int _maxEntries = 10;

  Future<void> _restore() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    state = prefs.getStringList(_prefsKey) ?? const <String>[];
  }

  Future<void> _persist() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_prefsKey, state);
  }

  Future<void> addSearch(String rawQuery) async {
    final String query = rawQuery.trim();
    if (query.isEmpty) return;

    final List<String> updated = List<String>.of(state)
      ..removeWhere((String existing) => existing.toLowerCase() == query.toLowerCase())
      ..insert(0, query);

    state = updated.length > _maxEntries ? updated.sublist(0, _maxEntries) : updated;
    await _persist();
  }

  Future<void> removeSearch(String query) async {
    state = state.where((String existing) => existing != query).toList();
    await _persist();
  }

  Future<void> clearAll() async {
    state = const <String>[];
    await _persist();
  }
}

final StateNotifierProvider<RecentSearchesNotifier, List<String>> recentSearchesProvider =
    StateNotifierProvider<RecentSearchesNotifier, List<String>>(
  (Ref ref) => RecentSearchesNotifier(),
);
