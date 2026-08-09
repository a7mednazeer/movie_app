import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_styles.dart';
import '../../../../core/extensions/context_extensions.dart';

/// The animated "M · MOVIES" brand mark shown on the splash screen.
///
/// Driven entirely by an external [progress] value (0..1) supplied by the
/// parent's [AnimationController] so the splash screen owns a single
/// source of truth for timing — this widget stays a pure, reusable
/// presentation piece with no animation logic of its own.
class AnimatedLogo extends StatelessWidget {
  const AnimatedLogo({required this.progress, super.key});

  /// Overall entrance progress, 0 → 1.
  final double progress;

  @override
  Widget build(BuildContext context) {
    // Stage 1 (0.0 → 0.55): the mark scales & fades in with a slight
    // overshoot for a premium, confident feel.
    final double markT = Curves.easeOutBack.transform(
      _clampedInterval(progress, 0, 0.55),
    );

    // Stage 2 (0.35 → 0.8): the wordmark fades + slides up.
    final double wordT = Curves.easeOutCubic.transform(
      _clampedInterval(progress, 0.35, 0.8),
    );

    // Stage 3 (0.6 → 1.0): the tagline fades in last.
    final double taglineT = Curves.easeOut.transform(
      _clampedInterval(progress, 0.6, 1),
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Transform.scale(
          scale: 0.7 + (0.3 * markT),
          child: Opacity(
            opacity: markT.clamp(0, 1),
            child: _LogoMark(glow: taglineT),
          ),
        ),
        const SizedBox(height: AppDimens.space16),
        Opacity(
          opacity: wordT.clamp(0, 1),
          child: Transform.translate(
            offset: Offset(0, 12 * (1 - wordT)),
            child: Text(
              AppStrings.appName,
              style: AppTextStyles.headlineLarge(color: Colors.white)
                  .copyWith(letterSpacing: 6),
            ),
          ),
        ),
        const SizedBox(height: AppDimens.space8),
        Opacity(
          opacity: taglineT.clamp(0, 1),
          child: Text(
            context.l10n.appTagline,
            style: AppTextStyles.overline(color: AppColors.darkTextSecondary),
          ),
        ),
      ],
    );
  }

  double _clampedInterval(double t, double begin, double end) {
    return ((t - begin) / (end - begin)).clamp(0.0, 1.0);
  }
}

class _LogoMark extends StatelessWidget {
  const _LogoMark({required this.glow});

  /// 0 → 1 glow intensity applied once the entrance settles.
  final double glow;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 96,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppDimens.radiusLg),
        gradient: AppColors.primaryGradient,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: AppColors.primary.withOpacity(0.35 * glow),
            blurRadius: 32,
            spreadRadius: 2,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: const Text(
        'M',
        style: TextStyle(
          fontSize: 52,
          fontWeight: FontWeight.w900,
          color: Colors.black,
          height: 1,
        ),
      ),
    );
  }
}
