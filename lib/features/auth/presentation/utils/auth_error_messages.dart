import 'package:flutter/widgets.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/extensions/context_extensions.dart';

/// Resolves an [AuthFailure]'s stable `code` (mirroring Firebase Auth's
/// own error codes, e.g. `wrong-password`) into a fully localized
/// message.
///
/// Centralizing this mapping here — rather than baking English text into
/// [AuthFailure] itself — is what makes an auth error show up correctly
/// translated no matter which of the 12 languages the app is running in.
String authErrorMessage(BuildContext context, AuthFailure failure) {
  switch (failure.code) {
    case 'invalid-email':
      return context.l10n.authErrorInvalidEmail;
    case 'user-disabled':
      return context.l10n.authErrorUserDisabled;
    case 'user-not-found':
      return context.l10n.authErrorUserNotFound;
    case 'wrong-password':
    case 'invalid-credential':
      return context.l10n.authErrorWrongPassword;
    case 'email-already-in-use':
      return context.l10n.authErrorEmailInUse;
    case 'weak-password':
      return context.l10n.authErrorWeakPassword;
    case 'too-many-requests':
      return context.l10n.authErrorTooManyRequests;
    case 'network-request-failed':
      return context.l10n.noInternetSubtitle;
    case 'firebase-not-configured':
      return context.l10n.authErrorNotConfigured;
    case 'requires-recent-login':
      return context.l10n.authErrorRequiresRecentLogin;
    default:
      return context.l10n.genericErrorSubtitle;
  }
}
