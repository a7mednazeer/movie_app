import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/extensions/context_extensions.dart';

/// Home's top bar: compact brand mark on the left, quick search shortcut
/// on the right. Kept as a [PreferredSizeWidget] so it slots directly into
/// `Scaffold.appBar`.
class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({required this.onSearchTap, required this.onProfileTap, super.key});

  final VoidCallback onSearchTap;
  final VoidCallback onProfileTap;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: AppDimens.screenPaddingHorizontal,
      title: Row(
        children: <Widget>[
          Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppDimens.radiusXs),
              gradient: AppColors.primaryGradient,
            ),
            alignment: Alignment.center,
            child: const Text(
              'M',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w900,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(width: AppDimens.space8),
          Text(
            AppStrings.appName,
            style: context.textTheme.titleLarge?.copyWith(letterSpacing: 2),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          onPressed: onSearchTap,
          icon: const Icon(Icons.search_rounded),
          tooltip: context.l10n.navSearch,
        ),
        IconButton(
          onPressed: onProfileTap,
          icon: const Icon(Icons.person_outline_rounded),
          tooltip: context.l10n.navProfile,
        ),
        const SizedBox(width: AppDimens.space8),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(AppDimens.appBarHeight);
}
