import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/widgets/app_error_view.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../providers/watchlist_provider.dart';

/// Temporary placeholder that already reflects real, functional state —
/// movies toggled from Home's poster cards genuinely land in
/// [watchlistProvider]. The full swipe-to-remove list UI replaces this
/// file when Watchlist is built.
class WatchlistScreen extends ConsumerWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int savedCount = ref.watch(watchlistProvider).length;

    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.watchlistTitle)),
      body: FullScreenStateView(
        icon: Icons.bookmark_rounded,
        title: savedCount == 0
            ? AppStrings.watchlistEmptyTitle
            : '$savedCount movie${savedCount == 1 ? '' : 's'} saved',
        subtitle: AppStrings.watchlistEmptySubtitle,
      ),
    );
  }
}
