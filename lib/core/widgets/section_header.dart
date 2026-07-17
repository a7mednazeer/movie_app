import 'package:flutter/material.dart';

import '../constants/app_dimens.dart';
import '../constants/app_strings.dart';
import '../extensions/context_extensions.dart';

/// Consistent "Section Title    See All →" header used above every
/// horizontal/vertical movie rail throughout the app.
class SectionHeader extends StatelessWidget {
  const SectionHeader({
    required this.title,
    this.onSeeAll,
    super.key,
  });

  final String title;
  final VoidCallback? onSeeAll;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppDimens.screenPaddingHorizontal,
        AppDimens.space8,
        AppDimens.screenPaddingHorizontal,
        AppDimens.space12,
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(title, style: context.textTheme.headlineSmall),
          ),
          if (onSeeAll != null)
            InkWell(
              onTap: onSeeAll,
              borderRadius: BorderRadius.circular(AppDimens.radiusSm),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.space8,
                  vertical: AppDimens.space4,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(AppStrings.seeAll, style: context.textTheme.labelMedium),
                    const SizedBox(width: AppDimens.space4),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 12,
                      color: context.textTheme.labelMedium?.color,
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
