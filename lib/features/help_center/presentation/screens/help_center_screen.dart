import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/routes/route_names.dart';

/// Help Center hub — a real menu, not a single catch-all screen. Each
/// row pushes a fully built sub-screen.
class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.helpCenterLabel)),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: AppDimens.space16),
        children: <Widget>[
          _HelpTile(
            icon: Icons.chat_bubble_outline_rounded,
            title: context.l10n.chatbotTitle,
            subtitle: context.l10n.chatbotEntrySubtitle,
            onTap: () => context.push('${RouteNames.helpCenter}/chat'),
          ),
          _HelpTile(
            icon: Icons.quiz_outlined,
            title: context.l10n.faqTitle,
            subtitle: context.l10n.faqEntrySubtitle,
            onTap: () => context.push('${RouteNames.helpCenter}/faq'),
          ),
          _HelpTile(
            icon: Icons.mail_outline_rounded,
            title: context.l10n.contactUsTitle,
            subtitle: context.l10n.contactUsEntrySubtitle,
            onTap: () => context.push('${RouteNames.helpCenter}/contact'),
          ),
          _HelpTile(
            icon: Icons.rate_review_outlined,
            title: context.l10n.feedbackTitle,
            subtitle: context.l10n.feedbackEntrySubtitle,
            onTap: () => context.push('${RouteNames.helpCenter}/feedback'),
          ),
          const Divider(height: AppDimens.space32),
          _HelpTile(
            icon: Icons.info_outline_rounded,
            title: context.l10n.aboutSection,
            subtitle: context.l10n.aboutEntrySubtitle,
            onTap: () => context.push('${RouteNames.helpCenter}/about'),
          ),
          _HelpTile(
            icon: Icons.description_outlined,
            title: context.l10n.termsTitle,
            onTap: () => context.push(RouteNames.termsOfService),
          ),
          _HelpTile(
            icon: Icons.privacy_tip_outlined,
            title: context.l10n.privacyTitle,
            onTap: () => context.push(RouteNames.privacyPolicy),
          ),
        ],
      ),
    );
  }
}

class _HelpTile extends StatelessWidget {
  const _HelpTile({
    required this.icon,
    required this.title,
    required this.onTap,
    this.subtitle,
  });

  final IconData icon;
  final String title;
  final String? subtitle;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(title),
      subtitle: subtitle == null ? null : Text(subtitle!),
      trailing: const Icon(Icons.chevron_right_rounded),
      onTap: onTap,
    );
  }
}
