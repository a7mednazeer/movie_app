import 'package:flutter/animation.dart';

/// Centralized animation timing so motion feels consistent app-wide.
abstract final class AppDurations {
  static const Duration fast = Duration(milliseconds: 180);
  static const Duration medium = Duration(milliseconds: 320);
  static const Duration slow = Duration(milliseconds: 500);

  static const Duration splashLogoIn = Duration(milliseconds: 900);
  static const Duration splashHold = Duration(milliseconds: 700);
  static const Duration splashExit = Duration(milliseconds: 450);

  static const Duration pageTransition = Duration(milliseconds: 380);
  static const Duration shimmerLoop = Duration(milliseconds: 1400);

  static const Curve curveDefault = Curves.easeOutCubic;
  static const Curve curveEmphasized = Curves.easeOutQuint;
  static const Curve curveBounceIn = Curves.easeOutBack;

  const AppDurations._();
}
