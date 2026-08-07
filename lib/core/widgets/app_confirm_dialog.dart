import 'package:flutter/material.dart';

import '../extensions/context_extensions.dart';

/// A single reusable confirmation dialog, so every destructive action
/// ("Clear recent searches", "Remove from watchlist", …) gets the same
/// look and the same async/await-friendly API instead of each screen
/// building its own `AlertDialog`.
class AppConfirmDialog {
  const AppConfirmDialog._();

  static Future<bool> show(
    BuildContext context, {
    required String title,
    required String message,
    String? confirmLabel,
    bool isDestructive = true,
  }) async {
    final bool? confirmed = await showDialog<bool>(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(false),
              child: Text(dialogContext.l10n.cancel),
            ),
            TextButton(
              onPressed: () => Navigator.of(dialogContext).pop(true),
              style: TextButton.styleFrom(
                foregroundColor: isDestructive
                    ? Theme.of(dialogContext).colorScheme.error
                    : Theme.of(dialogContext).colorScheme.primary,
              ),
              child: Text(confirmLabel ?? dialogContext.l10n.confirm),
            ),
          ],
        );
      },
    );
    return confirmed ?? false;
  }
}
