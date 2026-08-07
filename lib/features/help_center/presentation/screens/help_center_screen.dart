import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/app_error_view.dart';

/// Temporary placeholder. The full Help Center (chatbot, FAQ, contact,
/// about, feedback, Terms of Service, Privacy Policy) is built in a
/// later pass and will replace this file's contents.
class HelpCenterScreen extends StatelessWidget {
  const HelpCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.helpCenterLabel)),
      body: FullScreenStateView(
        icon: Icons.help_outline_rounded,
        title: context.l10n.helpCenterLabel,
        subtitle: context.l10n.helpCenterSubtitle,
      ),
    );
  }
}
