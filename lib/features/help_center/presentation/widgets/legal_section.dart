import 'package:flutter/material.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';

/// One titled paragraph in a legal document — shared by the Terms of
/// Service and Privacy Policy screens so the two don't duplicate the
/// same section-layout widget.
class LegalSection extends StatelessWidget {
  const LegalSection({required this.title, required this.body, super.key});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: AppDimens.space20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title, style: context.textTheme.titleMedium),
          const SizedBox(height: AppDimens.space8),
          Text(body, style: context.textTheme.bodyMedium),
        ],
      ),
    );
  }
}
