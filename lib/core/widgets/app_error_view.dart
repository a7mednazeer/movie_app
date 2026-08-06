import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/app_colors.dart';
import '../constants/app_dimens.dart';
import '../constants/app_strings.dart';
import '../errors/failures.dart';
import '../extensions/context_extensions.dart';

/// A compact, inline error state — used inside a single rail/section so
/// one failing request never blocks the rest of the screen.
///
/// Pass the [error] caught by the surrounding `AsyncValue.when(error: …)`
/// and this automatically shows a distinct "No internet connection"
/// message (with a Wi-Fi-off icon) for a [NetworkFailure], rather than a
/// generic "something went wrong" for what's actually a connectivity
/// problem. Omit [error] (or pass an explicit [message]) to keep the
/// original generic wording.
class InlineErrorView extends StatelessWidget {
  const InlineErrorView({
    required this.onRetry,
    this.error,
    this.message,
    super.key,
  });

  final VoidCallback onRetry;
  final Object? error;
  final String? message;

  bool get _isOffline => error is NetworkFailure;

  @override
  Widget build(BuildContext context) {
    final String displayMessage =
        message ?? (_isOffline ? AppStrings.noInternetSubtitle : AppStrings.genericErrorSubtitle);

    return Container(
      padding: const EdgeInsets.all(AppDimens.space16),
      decoration: BoxDecoration(
        color: context.colors.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(AppDimens.radiusMd),
        border: Border.all(color: context.colors.outline),
      ),
      child: Row(
        children: <Widget>[
          Icon(
            _isOffline ? Icons.wifi_off_rounded : Icons.error_outline_rounded,
            color: _isOffline ? context.colors.onSurfaceVariant : AppColors.error,
            size: AppDimens.iconMd,
          ),
          const SizedBox(width: AppDimens.space12),
          Expanded(
            child: Text(displayMessage, style: context.textTheme.bodyMedium),
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

/// A full-screen error/empty state with an illustration slot, title,
/// subtitle, and an optional retry action.
///
/// Pass [illustrationAsset] (an SVG in `assets/images/`) for the real,
/// on-brand illustrations used across Search/Watchlist/Favorites/Browse;
/// omit it to fall back to a plain icon-in-circle, which is still a
/// perfectly fine look for less prominent empty states.
class FullScreenStateView extends StatelessWidget {
  const FullScreenStateView({
    required this.icon,
    required this.title,
    required this.subtitle,
    this.illustrationAsset,
    this.onRetry,
    this.retryLabel = AppStrings.retry,
    super.key,
  });

  final IconData icon;
  final String title;
  final String subtitle;
  final String? illustrationAsset;
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
            if (illustrationAsset != null)
              SvgPicture.asset(illustrationAsset!, width: 160, height: 160)
            else
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
