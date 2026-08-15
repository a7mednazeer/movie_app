import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../core/utils/url_launcher_helper.dart';

/// The full About screen — Settings' "About This App" tile links here
/// now instead of only opening a small dialog, since Help Center's
/// "about" entry needs a real, complete screen rather than a shortcut
/// hidden inside Settings.
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  static const String _appVersion = '1.0.0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.aboutSection)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: AppDimens.space16),
              Center(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 72,
                      height: 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(AppDimens.radiusLg),
                        gradient: AppColors.primaryGradient,
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        'M',
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppDimens.space12),
                    Text(AppStrings.appName, style: context.textTheme.headlineSmall),
                    const SizedBox(height: 2),
                    Text(
                      context.l10n.versionLabel(_appVersion),
                      style: context.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppDimens.space32),
              Text(context.l10n.aboutDescription, style: context.textTheme.bodyMedium),
              const SizedBox(height: AppDimens.space16),
              Text(context.l10n.tmdbAttribution, style: context.textTheme.bodySmall),
              const SizedBox(height: AppDimens.space8),
              TextButton(
                onPressed: () => openExternalUrl(context, 'https://www.themoviedb.org'),
                child: Text(context.l10n.visitTmdb),
              ),
              const SizedBox(height: AppDimens.space24),
              const Divider(),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(context.l10n.termsTitle),
                trailing: const Icon(Icons.chevron_right_rounded),
                onTap: () => context.push(RouteNames.termsOfService),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(context.l10n.privacyTitle),
                trailing: const Icon(Icons.chevron_right_rounded),
                onTap: () => context.push(RouteNames.privacyPolicy),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
