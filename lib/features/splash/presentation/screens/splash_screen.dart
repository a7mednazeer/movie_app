import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_durations.dart';
import '../../../../core/routes/route_names.dart';
import '../providers/splash_provider.dart';
import '../widgets/animated_logo.dart';

/// The very first screen shown when the app launches.
///
/// Plays a short, premium brand entrance animation while
/// [appInitializationProvider] runs bootstrap work in the background, then
/// navigates to Home once both are complete. Errors during initialization
/// never trap the user here — the app still proceeds to Home and lets
/// individual screens surface their own retryable error states.
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  bool _hasNavigated = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: AppDurations.splashLogoIn,
    );

    _scheduleNavigation();
  }

  /// Waits for both the entrance animation and app bootstrap work to
  /// finish (whichever takes longer), holds briefly so the brand moment
  /// registers, then transitions to Home exactly once.
  Future<void> _scheduleNavigation() async {
    final Future<void> animationDone = _controller.forward().orCancel;
    final Future<void> initDone = ref.read(appInitializationProvider.future);

    try {
      await Future.wait<void>(<Future<void>>[animationDone, initDone]);
    } catch (_) {
      // Initialization failure shouldn't strand the user on the splash
      // screen — proceed to Home, which owns its own error/retry states.
    }

    await Future<void>.delayed(AppDurations.splashHold);

    if (!mounted || _hasNavigated) return;
    _hasNavigated = true;
    context.go(RouteNames.home);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, -0.2),
            radius: 1.1,
            colors: <Color>[
              Color(0xFF1C1706),
              AppColors.darkBackground,
            ],
          ),
        ),
        child: Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget? child) {
              return AnimatedLogo(progress: _controller.value);
            },
          ),
        ),
      ),
    );
  }
}
