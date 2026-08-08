/// Simple, dependency-free validators for form fields.
///
/// Every validator returns `null` for "valid" (matching
/// `TextFormField.validator`'s contract) or an error-message *key*
/// resolved by the caller via `context.l10n` — validators themselves
/// don't own any user-facing copy, so they stay usable from any screen
/// regardless of locale.
abstract final class Validators {
  static final RegExp _emailPattern = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  static bool isValidEmail(String value) => _emailPattern.hasMatch(value.trim());

  /// Firebase's own minimum for email/password accounts.
  static const int minPasswordLength = 6;

  static bool isValidPassword(String value) => value.length >= minPasswordLength;

  const Validators._();
}
