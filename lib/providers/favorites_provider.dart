import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Tracks which movie ids the user has marked as a favorite.
///
/// Deliberately separate from [watchlistProvider] — "favorite" and
/// "watchlist" are different intents (favorites = movies you love,
/// watchlist = movies you plan to watch) and Movie Details exposes both
/// as distinct buttons. Persisted the same way as [watchlistProvider],
/// via its own Hive box.
class FavoritesNotifier extends StateNotifier<Set<int>> {
  FavoritesNotifier() : super(<int>{}) {
    _restore();
  }

  static const String _boxName = 'favorite_ids';
  Box<int>? _box;

  Future<void> _restore() async {
    _box = await Hive.openBox<int>(_boxName);
    state = _box!.keys.cast<int>().toSet();
  }

  bool isFavorite(int movieId) => state.contains(movieId);

  Future<void> toggle(int movieId) async {
    final Set<int> updated = Set<int>.of(state);
    if (updated.remove(movieId)) {
      await _box?.delete(movieId);
    } else {
      updated.add(movieId);
      await _box?.put(movieId, movieId);
    }
    state = updated;
  }
}

final StateNotifierProvider<FavoritesNotifier, Set<int>> favoritesProvider =
    StateNotifierProvider<FavoritesNotifier, Set<int>>(
  (Ref ref) => FavoritesNotifier(),
);
