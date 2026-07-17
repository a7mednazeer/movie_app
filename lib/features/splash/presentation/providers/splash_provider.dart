import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/network/network_info.dart';
import '../../../../core/theme/theme_provider.dart';

/// Runs one-time app bootstrap work while the splash animation plays.
///
/// Real initialization (restoring the saved theme, checking connectivity,
/// warming up caches, etc.) happens here rather than in the widget tree,
/// keeping [SplashScreen] focused purely on presentation. The splash
/// screen awaits this provider *and* its own minimum-duration animation,
/// then navigates once both are done — so the brand moment never feels
/// rushed on fast devices or truncated on slow ones.
final FutureProvider<void> appInitializationProvider = FutureProvider<void>((
  Ref ref,
) async {
  // Touching themeModeProvider forces its StateNotifier to construct now
  // (which kicks off restoring the persisted theme from SharedPreferences)
  // instead of lazily on first use inside MaterialApp.
  ref.read(themeModeProvider);

  // Warm up connectivity status so the first real screen already knows
  // whether it should render an offline state.
  final NetworkInfo networkInfo = NetworkInfoImpl();
  await networkInfo.isConnected;
});
