import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/utils/url_launcher_helper.dart';
import '../providers/language_provider.dart';
import '../widgets/language_picker_sheet.dart';
import '../widgets/theme_mode_selector.dart';

/// Theme switching, language preference, and app info — the two optional
/// enhancements called out in the original brief.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  static const String _appVersion = '1.0.0';

  Future<void> _showAbout(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('About MOVIES'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Version $_appVersion', style: context.textTheme.bodyMedium),
              const SizedBox(height: AppDimens.space12),
              Text(
                'A premium movie discovery app — browse trending, popular, '
                'and top-rated titles, search, and keep track of what you '
                'want to watch.',
                style: context.textTheme.bodyMedium,
              ),
              const SizedBox(height: AppDimens.space12),
              Text(
                'This product uses the TMDB API but is not endorsed or '
                'certified by TMDB.',
                style: context.textTheme.bodySmall,
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => openExternalUrl(context, 'https://www.themoviedb.org'),
              child: const Text('Visit TMDB'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppLanguage language = ref.watch(languageProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: AppDimens.space16),
        children: <Widget>[
          _SettingsSectionLabel(label: 'Appearance'),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDimens.screenPaddingHorizontal),
            child: Align(alignment: Alignment.centerLeft, child: ThemeModeSelector()),
          ),
          const SizedBox(height: AppDimens.space24),
          _SettingsSectionLabel(label: 'Preferences'),
          ListTile(
            leading: const Icon(Icons.language_rounded),
            title: const Text('Language'),
            subtitle: Text(language.label),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: () => showLanguagePicker(context, ref),
          ),
          const SizedBox(height: AppDimens.space24),
          _SettingsSectionLabel(label: 'About'),
          ListTile(
            leading: const Icon(Icons.info_outline_rounded),
            title: const Text('About This App'),
            subtitle: Text('Version $_appVersion'),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: () => _showAbout(context),
          ),
        ],
      ),
    );
  }
}

class _SettingsSectionLabel extends StatelessWidget {
  const _SettingsSectionLabel({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppDimens.screenPaddingHorizontal,
        AppDimens.space8,
        AppDimens.screenPaddingHorizontal,
        AppDimens.space8,
      ),
      child: Text(
        label,
        style: context.textTheme.labelMedium?.copyWith(
          color: context.colors.primary,
          letterSpacing: 0.6,
        ),
      ),
    );
  }
}
