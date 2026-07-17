import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

/// Tracks which movie ids the user has saved to their watchlist.
///
/// Backed by in-memory state for now so the toggle button on movie cards
/// is fully functional today. When the Watchlist screen is built, this
/// notifier will persist to Hive (already a project dependency) without
/// changing the public API any other feature depends on.
class WatchlistNotifier extends StateNotifier<Set<int>> {
  WatchlistNotifier() : super(<int>{});

  bool isSaved(int movieId) => state.contains(movieId);

  void toggle(int movieId) {
    final Set<int> updated = Set<int>.of(state);
    if (!updated.remove(movieId)) {
      updated.add(movieId);
    }
    state = updated;
  }
}

final StateNotifierProvider<WatchlistNotifier, Set<int>> watchlistProvider =
    StateNotifierProvider<WatchlistNotifier, Set<int>>(
  (Ref ref) => WatchlistNotifier(),
);
