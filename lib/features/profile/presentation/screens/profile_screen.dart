import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../core/widgets/app_confirm_dialog.dart';
import '../../../../models/app_user.dart';
import '../../../../providers/auth_providers.dart';
import '../../../../providers/favorites_provider.dart';
import '../../../../providers/watchlist_provider.dart';

/// Premium profile screen showing account info, stats, and settings.
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  Future<void> _confirmSignOut(BuildContext context, WidgetRef ref) async {
    final bool confirmed = await AppConfirmDialog.show(
      context,
      title: context.l10n.signOutConfirmTitle,
      message: context.l10n.signOutConfirmMessage,
      confirmLabel: context.l10n.signOut,
      isDestructive: false,
    );
    if (!confirmed) return;

    await ref.read(authRepositoryProvider).signOut();
    if (context.mounted) {
      context.showSnack(context.l10n.signedOutSnack);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppUser user = ref.watch(authStateProvider).asData?.value ?? AppUser.guest;
    final int favoritesCount = ref.watch(favoritesProvider).length;
    final int watchlistCount = ref.watch(watchlistProvider).length;

    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          _ProfileAppBar(user: user),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
              child: Column(
                children: <Widget>[
                  if (user.isGuest) ...<Widget>[
                    _SignInBanner(onTap: () => context.push(RouteNames.signIn)),
                    const SizedBox(height: AppDimens.space24),
                  ],
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
                  _SectionTile(
                    leading: Icons.settings_outlined,
                    title: context.l10n.settingsLabel,
                    subtitle: context.l10n.settingsSubtitle,
                    onTap: () => context.push(RouteNames.settings),
                  ),
                  if (!user.isGuest) ...<Widget>[
                    const SizedBox(height: AppDimens.space12),
                    _SectionTile(
                      leading: Icons.logout_rounded,
                      title: context.l10n.signOut,
                      isDestructive: true,
                      onTap: () => _confirmSignOut(context, ref),
                    ),
                  ],
                  const SizedBox(height: AppDimens.space32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileAppBar extends StatelessWidget {
  const _ProfileAppBar({required this.user});

  final AppUser user;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 280,
      pinned: true,
      stretch: true,
      backgroundColor: context.theme.scaffoldBackgroundColor,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [StretchMode.zoomBackground],
        background: Stack(
          alignment: Alignment.center,
          children: [
            // Gradient Background
            Positioned.fill(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      AppColors.primary.withOpacity(0.2),
                      context.theme.scaffoldBackgroundColor,
                    ],
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 40),
                _ProfileAvatar(user: user),
                const SizedBox(height: AppDimens.space16),
                Text(
                  user.isGuest ? context.l10n.yourLibrary : user.labelOr(context.l10n.yourLibrary),
                  style: context.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                if (!user.isGuest && user.email != null) ...[
                  const SizedBox(height: 4),
                  Text(
                    user.email!,
                    style: context.textTheme.bodyMedium?.copyWith(color: context.colors.onSurfaceVariant),
                  ),
                ],
                const SizedBox(height: AppDimens.space16),
                if (!user.isGuest)
                  OutlinedButton.icon(
                    onPressed: () => context.push(RouteNames.editProfile),
                    icon: const Icon(Icons.edit_outlined, size: 16),
                    label: Text(context.l10n.editInformation),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      minimumSize: Size.zero,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileAvatar extends StatelessWidget {
  const _ProfileAvatar({required this.user});

  final AppUser user;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: AppColors.primary, width: 2),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.2),
            blurRadius: 20,
            spreadRadius: 2,
          ),
        ],
      ),
      child: ClipOval(
        child: _buildAvatarContent(context),
      ),
    );
  }

  Widget _buildAvatarContent(BuildContext context) {
    if (user.isGuest) {
      return Container(
        color: context.colors.surfaceContainerHighest,
        child: const Icon(Icons.person_rounded, size: 50, color: Colors.black),
      );
    }
    if (user.photoUrl != null) {
      return CachedNetworkImage(
        imageUrl: user.photoUrl!,
        fit: BoxFit.cover,
        errorWidget: (context, url, error) => Container(
          color: AppColors.primary,
          alignment: Alignment.center,
          child: Text(
            user.labelOr('?')[0].toUpperCase(),
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
      );
    }
    return Container(
      color: AppColors.primary,
      alignment: Alignment.center,
      child: Text(
        user.labelOr('?')[0].toUpperCase(),
        style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}

class _SectionTile extends StatelessWidget {
  const _SectionTile({
    required this.leading,
    required this.title,
    this.subtitle,
    required this.onTap,
    this.isDestructive = false,
  });

  final IconData leading;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;
  final bool isDestructive;

  @override
  Widget build(BuildContext context) {
    final Color color = isDestructive ? context.colors.error : context.colors.onSurface;

    return Card(
      child: ListTile(
        leading: Icon(leading, color: color),
        title: Text(title, style: TextStyle(color: color, fontWeight: FontWeight.w500)),
        subtitle: subtitle != null ? Text(subtitle!) : null,
        trailing: isDestructive ? null : const Icon(Icons.chevron_right_rounded),
        onTap: onTap,
      ),
    );
  }
}

class _SignInBanner extends StatelessWidget {
  const _SignInBanner({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.colors.primary.withOpacity(0.1),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimens.radiusMd),
        side: BorderSide(color: AppColors.primary.withOpacity(0.2)),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(AppDimens.radiusMd),
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.space16),
          child: Row(
            children: <Widget>[
              const Icon(Icons.cloud_sync_outlined, color: AppColors.primary, size: 28),
              const SizedBox(width: AppDimens.space16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      context.l10n.authSyncBannerTitle,
                      style: context.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      context.l10n.authSyncBannerSubtitle,
                      style: context.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right_rounded, color: AppColors.primary),
            ],
          ),
        ),
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
              Icon(icon, color: AppColors.primary),
              const SizedBox(height: AppDimens.space12),
              Text('$count', style: context.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold)),
              const SizedBox(height: 2),
              Text(label, style: context.textTheme.bodyMedium?.copyWith(color: context.colors.onSurfaceVariant)),
            ],
          ),
        ),
      ),
    );
  }
}
