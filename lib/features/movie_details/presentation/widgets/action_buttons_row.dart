import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/utils/url_launcher_helper.dart';
import '../../../../models/movie.dart';
import '../../../../providers/favorites_provider.dart';
import '../../../../providers/watchlist_provider.dart';

/// The four primary actions on Movie Details: Favorite, Watchlist, Share,
/// and Trailer — every one fully functional.
class ActionButtonsRow extends ConsumerWidget {
  const ActionButtonsRow({required this.movie, super.key});

  final Movie movie;

  Future<void> _openTrailer(BuildContext context) {
    return openExternalUrl(
      context,
      movie.trailerUrl,
      missingUrlMessage: 'No trailer available for this title yet.',
      launchFailedMessage: 'Couldn\'t open the trailer.',
    );
  }

  void _shareMovie(BuildContext context) {
    Share.share('Check out "${movie.title}" on Movies!');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isFavorite = ref.watch(favoritesProvider).contains(movie.id);
    final bool isSaved = ref.watch(watchlistProvider).contains(movie.id);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.screenPaddingHorizontal,
        vertical: AppDimens.space20,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: _ActionButton(
              icon: isFavorite ? Icons.favorite_rounded : Icons.favorite_border_rounded,
              label: 'Favorite',
              isActive: isFavorite,
              onTap: () => ref.read(favoritesProvider.notifier).toggle(movie.id),
            ),
          ),
          const SizedBox(width: AppDimens.space12),
          Expanded(
            child: _ActionButton(
              icon: isSaved ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
              label: AppStrings.addToWatchlist,
              isActive: isSaved,
              onTap: () {
                ref.read(watchlistProvider.notifier).toggle(movie.id);
                context.showSnack(
                  isSaved ? AppStrings.removedFromWatchlist : AppStrings.addedToWatchlist,
                );
              },
            ),
          ),
          const SizedBox(width: AppDimens.space12),
          Expanded(
            child: _ActionButton(
              icon: Icons.ios_share_rounded,
              label: AppStrings.share,
              onTap: () => _shareMovie(context),
            ),
          ),
          const SizedBox(width: AppDimens.space12),
          Expanded(
            child: _ActionButton(
              icon: Icons.play_circle_outline_rounded,
              label: AppStrings.watchTrailer,
              onTap: () => _openTrailer(context),
            ),
          ),
        ],
      ),
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({
    required this.icon,
    required this.label,
    required this.onTap,
    this.isActive = false,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    final Color color = isActive ? AppColors.primary : context.colors.onSurface;

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppDimens.radiusMd),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppDimens.space8),
        child: Column(
          children: <Widget>[
            Icon(icon, color: color, size: AppDimens.iconLg),
            const SizedBox(height: AppDimens.space4),
            Text(
              label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: context.textTheme.labelSmall?.copyWith(color: color),
            ),
          ],
        ),
      ),
    );
  }
}
