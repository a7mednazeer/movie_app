import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../extensions/context_extensions.dart';

/// Opens [url] in an external app (browser/YouTube), showing a consistent
/// snackbar if the URL is missing or can't be launched. Shared by every
/// "watch trailer" entry point so the launch + error-handling logic
/// lives in exactly one place.
Future<void> openExternalUrl(
  BuildContext context,
  String? url, {
  String missingUrlMessage = 'This link isn\'t available yet.',
  String launchFailedMessage = 'Couldn\'t open that link.',
}) async {
  if (url == null || url.isEmpty) {
    context.showSnack(missingUrlMessage);
    return;
  }

  final Uri uri = Uri.parse(url);
  final bool canOpen = await canLaunchUrl(uri);

  if (!context.mounted) return;

  if (canOpen) {
    await launchUrl(uri, mode: LaunchMode.externalApplication);
  } else {
    context.showSnack(launchFailedMessage, isError: true);
  }
}
