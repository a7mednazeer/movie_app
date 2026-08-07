import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/theme/theme_provider.dart';

/// A three-way Light / Dark / System selector for [themeModeProvider].
class ThemeModeSelector extends ConsumerWidget {
  const ThemeModeSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeMode current = ref.watch(themeModeProvider);

    return SegmentedButton<ThemeMode>(
      segments: <ButtonSegment<ThemeMode>>[
        ButtonSegment<ThemeMode>(
          value: ThemeMode.light,
          icon: const Icon(Icons.light_mode_outlined, size: AppDimens.iconSm),
          label: Text(context.l10n.themeLight),
        ),
        ButtonSegment<ThemeMode>(
          value: ThemeMode.dark,
          icon: const Icon(Icons.dark_mode_outlined, size: AppDimens.iconSm),
          label: Text(context.l10n.themeDark),
        ),
        ButtonSegment<ThemeMode>(
          value: ThemeMode.system,
          icon: const Icon(Icons.brightness_auto_outlined, size: AppDimens.iconSm),
          label: Text(context.l10n.themeAuto),
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
