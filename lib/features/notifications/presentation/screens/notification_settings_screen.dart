import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/app_error_view.dart';

/// Temporary placeholder. The full notifications feature (preferences,
/// permission handling, and a notification center) is built in a later
/// pass and will replace this file's contents.
class NotificationSettingsScreen extends StatelessWidget {
  const NotificationSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.notificationsLabel)),
      body: FullScreenStateView(
        icon: Icons.notifications_outlined,
        title: context.l10n.notificationsLabel,
        subtitle: context.l10n.notificationsSubtitle,
      ),
    );
  }
}
