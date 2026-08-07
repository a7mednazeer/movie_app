import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../providers/favorites_provider.dart';
import '../../../../providers/watchlist_provider.dart';

/// The app doesn't have accounts/auth, so this deliberately doesn't
/// pretend there's a signed-in user with a name or email — it's framed
/// as "Your Library": a home for the two things that actually persist
/// (favorites and watchlist) plus a way into Settings.
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int favoritesCount = ref.watch(favoritesProvider).length;
    final int watchlistCount = ref.watch(watchlistProvider).length;

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.profileTitle)),
      body: ListView(
        padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
        children: <Widget>[
          const SizedBox(height: AppDimens.space8),
          Center(
            child: Container(
              width: 88,
              height: 88,
              decoration: const BoxDecoration(
                gradient: AppColors.primaryGradient,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.person_rounded, size: 44, color: Colors.black),
            ),
          ),
          const SizedBox(height: AppDimens.space16),
          Center(
            child: Text(context.l10n.yourLibrary, style: context.textTheme.headlineSmall),
          ),
          const SizedBox(height: AppDimens.space4),
          Center(
            child: Text(
              context.l10n.everythingSaved,
              style: context.textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: AppDimens.space24),
          Row(
            children: <Widget>[
              Expanded(
                child: _StatCard(
                  icon: Icons.favorite_rounded,
                  label: context.l10n.favoritesLabel,
                  count: favoritesCount,
                  onTap: () => context.push('${RouteNames.profile}/favorites'),
                ),
              ),
              const SizedBox(width: AppDimens.space12),
              Expanded(
                child: _StatCard(
                  icon: Icons.bookmark_rounded,
                  label: context.l10n.watchlistLabel,
                  count: watchlistCount,
                  onTap: () => context.go(RouteNames.watchlist),
                ),
              ),
            ],
          ),
          const SizedBox(height: AppDimens.space24),
          Card(
            child: ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: Text(context.l10n.settingsLabel),
              subtitle: Text(context.l10n.settingsSubtitle),
              trailing: const Icon(Icons.chevron_right_rounded),
              onTap: () => context.push(RouteNames.settings),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.icon,
    required this.label,
    required this.count,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final int count;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppDimens.radiusMd),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimens.space16,
            vertical: AppDimens.space20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(icon, color: context.colors.primary),
              const SizedBox(height: AppDimens.space12),
              Text('$count', style: context.textTheme.headlineMedium),
              const SizedBox(height: 2),
              Text(label, style: context.textTheme.bodyMedium),
            ],
          ),
        ),
      ),
    );
  }
}
