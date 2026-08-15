import 'package:flutter/material.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../widgets/legal_section.dart';

/// Real Privacy Policy text — describes the app's actual data flows
/// (TMDB API calls, optional Firebase Auth account, Firestore-synced
/// watchlist/favorites, local Hive storage) rather than generic
/// boilerplate that doesn't match what the app does. Still not a
/// substitute for a lawyer's review before a real commercial launch.
class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.privacyTitle)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(context.l10n.legalLastUpdated, style: context.textTheme.bodySmall),
              const SizedBox(height: AppDimens.space24),
              LegalSection(
                title: context.l10n.privacySection1Title,
                body: context.l10n.privacySection1Body,
              ),
              LegalSection(
                title: context.l10n.privacySection2Title,
                body: context.l10n.privacySection2Body,
              ),
              LegalSection(
                title: context.l10n.privacySection3Title,
                body: context.l10n.privacySection3Body,
              ),
              LegalSection(
                title: context.l10n.privacySection4Title,
                body: context.l10n.privacySection4Body,
              ),
              LegalSection(
                title: context.l10n.privacySection5Title,
                body: context.l10n.privacySection5Body,
              ),
              LegalSection(
                title: context.l10n.privacySection6Title,
                body: context.l10n.privacySection6Body,
              ),
              const SizedBox(height: AppDimens.space24),
            ],
          ),
        ),
      ),
    );
  }
}
