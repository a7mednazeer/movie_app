import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:hive_flutter/hive_flutter.dart';

/// Tracks which movie ids the user has saved to their watchlist.
///
/// Persisted to a Hive box (`watchlist_ids`) so the watchlist survives
/// app restarts, while keeping the exact same in-memory `Set<int>` API
/// every card widget already depends on (`isSaved`, `toggle`) — no other
/// file needed to change when persistence was added here.
class WatchlistNotifier extends StateNotifier<Set<int>> {
  WatchlistNotifier() : super(<int>{}) {
    _restore();
  }

  static const String _boxName = 'watchlist_ids';
  Box<int>? _box;

  Future<void> _restore() async {
    _box = await Hive.openBox<int>(_boxName);
    // Keys are stored as the movie id itself (see `toggle`), preserving
    // insertion order — a `Set<int>` built from them iterates oldest to
    // newest, so consumers wanting "most recent first" simply reverse it.
    final Set<int> restored = _box!.keys.cast<int>().toSet();
    if (mounted) {
      state = restored;
    }
  }

  bool isSaved(int movieId) => state.contains(movieId);

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

final StateNotifierProvider<WatchlistNotifier, Set<int>> watchlistProvider =
    StateNotifierProvider<WatchlistNotifier, Set<int>>(
  (Ref ref) => WatchlistNotifier(),
);
