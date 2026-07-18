import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/theme/theme_provider.dart';

/// A three-way Light / Dark / System selector for [themeModeProvider].
class ThemeModeSelector extends ConsumerWidget {
  const ThemeModeSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeMode current = ref.watch(themeModeProvider);

    return SegmentedButton<ThemeMode>(
      segments: const <ButtonSegment<ThemeMode>>[
        ButtonSegment<ThemeMode>(
          value: ThemeMode.light,
          icon: Icon(Icons.light_mode_outlined, size: AppDimens.iconSm),
          label: Text('Light'),
        ),
        ButtonSegment<ThemeMode>(
          value: ThemeMode.dark,
          icon: Icon(Icons.dark_mode_outlined, size: AppDimens.iconSm),
          label: Text('Dark'),
        ),
        ButtonSegment<ThemeMode>(
          value: ThemeMode.system,
          icon: Icon(Icons.brightness_auto_outlined, size: AppDimens.iconSm),
          label: Text('Auto'),
        ),
      ],
      selected: <ThemeMode>{current},
      showSelectedIcon: false,
      onSelectionChanged: (Set<ThemeMode> selection) {
        ref.read(themeModeProvider.notifier).setThemeMode(selection.first);
      },
    );
  }
}
