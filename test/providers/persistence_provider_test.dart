import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:movie_app/providers/favorites_provider.dart';
import 'package:movie_app/providers/watchlist_provider.dart';

/// [WatchlistNotifier]/[FavoritesNotifier] restore from Hive
/// asynchronously in their constructor (fire-and-forget, so widgets can
/// render immediately with an empty set and update once restore
/// completes). A short delay after construction gives that a chance to
/// finish before assertions run.
Future<void> _letRestoreComplete() => Future<void>.delayed(const Duration(milliseconds: 20));

void main() {
  late Directory tempDir;

  setUpAll(() {
    // `Hive.init` (unlike `hive_flutter`'s `Hive.initFlutter`) works with
    // a plain filesystem path and needs no platform channels — exactly
    // what's available in a plain `flutter_test` run.
    tempDir = Directory.systemTemp.createTempSync('movie_app_hive_test');
    Hive.init(tempDir.path);
  });

  tearDownAll(() async {
    await Hive.close();
    if (tempDir.existsSync()) {
      tempDir.deleteSync(recursive: true);
    }
  });

  setUp(() async {
    // Every test starts from empty boxes so persistence tests don't leak
    // into unrelated ones.
    if (Hive.isBoxOpen('watchlist_ids')) {
      await Hive.box<int>('watchlist_ids').clear();
    }
    if (Hive.isBoxOpen('favorite_ids')) {
      await Hive.box<int>('favorite_ids').clear();
    }
  });

  group('WatchlistNotifier', () {
    test('starts empty when no prior data exists', () async {
      final WatchlistNotifier notifier = WatchlistNotifier();
      await _letRestoreComplete();

      expect(notifier.state, isEmpty);

      notifier.dispose();
    });

    test('toggle adds a movie id, then removes it on a second call', () async {
      final WatchlistNotifier notifier = WatchlistNotifier();
      await _letRestoreComplete();

      await notifier.toggle(42);
      expect(notifier.state, contains(42));
      expect(notifier.isSaved(42), isTrue);

      await notifier.toggle(42);
      expect(notifier.state, isNot(contains(42)));
      expect(notifier.isSaved(42), isFalse);

      notifier.dispose();
    });

    test('adding several ids keeps them all until individually removed', () async {
      final WatchlistNotifier notifier = WatchlistNotifier();
      await _letRestoreComplete();

      await notifier.toggle(1);
      await notifier.toggle(2);
      await notifier.toggle(3);
      expect(notifier.state, <int>{1, 2, 3});

      await notifier.toggle(2);
      expect(notifier.state, <int>{1, 3});

      notifier.dispose();
    });

    test('persists across a fresh notifier instance (simulating an app restart)', () async {
      final WatchlistNotifier first = WatchlistNotifier();
      await _letRestoreComplete();
      await first.toggle(7);
      first.dispose();

      final WatchlistNotifier second = WatchlistNotifier();
      await _letRestoreComplete();

      expect(second.state, contains(7));

      second.dispose();
    });
  });

  group('FavoritesNotifier', () {
    test('behaves the same way as WatchlistNotifier (add/remove/persist)', () async {
      final FavoritesNotifier notifier = FavoritesNotifier();
      await _letRestoreComplete();

      await notifier.toggle(10);
      expect(notifier.isFavorite(10), isTrue);

      await notifier.toggle(10);
      expect(notifier.isFavorite(10), isFalse);

      notifier.dispose();
    });

    test('is completely independent of WatchlistNotifier', () async {
      final WatchlistNotifier watchlist = WatchlistNotifier();
      final FavoritesNotifier favorites = FavoritesNotifier();
      await _letRestoreComplete();

      await watchlist.toggle(1);

      expect(watchlist.state, contains(1));
      expect(favorites.state, isEmpty);

      watchlist.dispose();
      favorites.dispose();
    });
  });
}
