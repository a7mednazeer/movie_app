import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_dimens.dart';
import '../constants/app_strings.dart';
import '../extensions/context_extensions.dart';

/// A compact, inline error state — used inside a single rail/section so
/// one failing request never blocks the rest of the screen.
class InlineErrorView extends StatelessWidget {
  const InlineErrorView({
    required this.onRetry,
    this.message = AppStrings.genericErrorSubtitle,
    super.key,
  });

  final VoidCallback onRetry;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppDimens.space16),
      decoration: BoxDecoration(
        color: context.colors.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(AppDimens.radiusMd),
        border: Border.all(color: context.colors.outline),
      ),
      child: Row(
        children: <Widget>[
          Icon(Icons.error_outline_rounded, color: AppColors.error, size: AppDimens.iconMd),
          const SizedBox(width: AppDimens.space12),
          Expanded(
            child: Text(message, style: context.textTheme.bodyMedium),
          ),
          const SizedBox(width: AppDimens.space8),
          TextButton(
            onPressed: onRetry,
            child: const Text(AppStrings.retry),
          ),
        ],
      ),
    );
  }
}

/// A full-screen error/empty state with an illustration slot (icon-based
/// today, swap for a Lottie/SVG illustration later), title, subtitle, and
/// an optional retry action.
class FullScreenStateView extends StatelessWidget {
  const FullScreenStateView({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.onRetry,
    this.retryLabel = AppStrings.retry,
    super.key,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback? onRetry;
  final String retryLabel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppDimens.space32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 88,
              height: 88,
              decoration: BoxDecoration(
                color: context.colors.surfaceContainerHighest,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, size: 40, color: context.colors.onSurfaceVariant),
            ),
            const SizedBox(height: AppDimens.space24),
            Text(
              title,
              textAlign: TextAlign.center,
              style: context.textTheme.headlineSmall,
            ),
            const SizedBox(height: AppDimens.space8),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: context.textTheme.bodyMedium,
            ),
            if (onRetry != null) ...<Widget>[
              const SizedBox(height: AppDimens.space24),
              ElevatedButton(onPressed: onRetry, child: Text(retryLabel)),
            ],
          ],
        ),
      ),
    );
  }
}
