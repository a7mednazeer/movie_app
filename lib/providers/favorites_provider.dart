import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

/// Tracks which movie ids the user has marked as a favorite.
///
/// Deliberately separate from [watchlistProvider] — "favorite" and
/// "watchlist" are different intents (favorites = movies you love,
/// watchlist = movies you plan to watch) and Movie Details exposes both
/// as distinct buttons. Backed by in-memory state for now, same as
/// [watchlistProvider]; both will move to persisted storage together.
class FavoritesNotifier extends StateNotifier<Set<int>> {
  FavoritesNotifier() : super(<int>{});

  bool isFavorite(int movieId) => state.contains(movieId);

  void toggle(int movieId) {
    final Set<int> updated = Set<int>.of(state);
    if (!updated.remove(movieId)) {
      updated.add(movieId);
    }
    state = updated;
  }
}

final StateNotifierProvider<FavoritesNotifier, Set<int>> favoritesProvider =
    StateNotifierProvider<FavoritesNotifier, Set<int>>(
  (Ref ref) => FavoritesNotifier(),
);
