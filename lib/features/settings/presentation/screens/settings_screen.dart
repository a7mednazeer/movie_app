import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../core/utils/url_launcher_helper.dart';
import '../providers/language_provider.dart';
import '../widgets/language_picker_sheet.dart';
import '../widgets/theme_mode_selector.dart';

/// Theme switching, language preference, notifications, and app info.
class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  static const String _appVersion = '1.0.0';

  Future<void> _showAbout(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(dialogContext.l10n.aboutAppTitle('MOVIES')),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                dialogContext.l10n.versionLabel(_appVersion),
                style: dialogContext.textTheme.bodyMedium,
              ),
              const SizedBox(height: AppDimens.space12),
              Text(dialogContext.l10n.aboutDescription, style: dialogContext.textTheme.bodyMedium),
              const SizedBox(height: AppDimens.space12),
              Text(dialogContext.l10n.tmdbAttribution, style: dialogContext.textTheme.bodySmall),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => openExternalUrl(dialogContext, 'https://www.themoviedb.org'),
              child: Text(dialogContext.l10n.visitTmdb),
            ),
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(),
              child: Text(dialogContext.l10n.close),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Locale? locale = ref.watch(languageProvider);
    final AppLanguage currentLanguage =
        locale == null ? AppLanguage.english : AppLanguage.fromLocale(locale);
    final String languageSubtitle = locale == null
        ? '${currentLanguage.label} (${context.l10n.systemDefault})'
        : currentLanguage.label;

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.settingsTitle)),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: AppDimens.space16),
        children: <Widget>[
          _SettingsSectionLabel(label: context.l10n.appearance),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDimens.screenPaddingHorizontal),
            child: Align(alignment: Alignment.centerLeft, child: ThemeModeSelector()),
          ),
          const SizedBox(height: AppDimens.space24),
          _SettingsSectionLabel(label: context.l10n.preferences),
          ListTile(
            leading: const Icon(Icons.language_rounded),
            title: Text(context.l10n.languageLabel),
            subtitle: Text(languageSubtitle),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: () => showLanguagePicker(context, ref),
          ),
          ListTile(
            leading: const Icon(Icons.notifications_outlined),
            title: Text(context.l10n.notificationsLabel),
            subtitle: Text(context.l10n.notificationsSubtitle),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: () => context.push(RouteNames.notificationSettings),
          ),
          const SizedBox(height: AppDimens.space24),
          _SettingsSectionLabel(label: context.l10n.aboutSection),
          ListTile(
            leading: const Icon(Icons.info_outline_rounded),
            title: Text(context.l10n.aboutThisApp),
            subtitle: Text(context.l10n.versionLabel(_appVersion)),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: () => _showAbout(context),
          ),
          ListTile(
            leading: const Icon(Icons.help_outline_rounded),
            title: Text(context.l10n.helpCenterLabel),
            subtitle: Text(context.l10n.helpCenterSubtitle),
            trailing: const Icon(Icons.chevron_right_rounded),
            onTap: () => context.push(RouteNames.helpCenter),
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
