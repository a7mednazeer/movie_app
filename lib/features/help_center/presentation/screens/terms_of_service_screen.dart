import 'package:flutter/material.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../widgets/legal_section.dart';

/// Real Terms of Service text — genuinely describes what this app does
/// (TMDB-sourced data, optional Firebase accounts, local + cloud-synced
/// watchlist/favorites) rather than generic filler. Still not a
/// substitute for a lawyer's review before a real commercial launch —
/// see the note at the top of the screen.
class TermsOfServiceScreen extends StatelessWidget {
  const TermsOfServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.termsTitle)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(context.l10n.legalLastUpdated, style: context.textTheme.bodySmall),
              const SizedBox(height: AppDimens.space24),
              LegalSection(
                title: context.l10n.termsSection1Title,
                body: context.l10n.termsSection1Body,
              ),
              LegalSection(
                title: context.l10n.termsSection2Title,
                body: context.l10n.termsSection2Body,
              ),
              LegalSection(
                title: context.l10n.termsSection3Title,
                body: context.l10n.termsSection3Body,
              ),
              LegalSection(
                title: context.l10n.termsSection4Title,
                body: context.l10n.termsSection4Body,
              ),
              LegalSection(
                title: context.l10n.termsSection5Title,
                body: context.l10n.termsSection5Body,
              ),
              LegalSection(
                title: context.l10n.termsSection6Title,
                body: context.l10n.termsSection6Body,
              ),
              LegalSection(
                title: context.l10n.termsSection7Title,
                body: context.l10n.termsSection7Body,
              ),
              const SizedBox(height: AppDimens.space24),
            ],
          ),
        ),
      ),
    );
  }
}
