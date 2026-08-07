/// The one piece of user-facing copy that's intentionally **not**
/// localized: the brand name itself.
///
/// Every other string in the app is now real, translated copy served by
/// `AppLocalizations` (see `lib/l10n/` and `context.l10n`) — this class
/// used to hold all of that as English-only constants before full
/// localization was added, and is kept around now only for the brand
/// name, which stays "MOVIES" in every language by design.
abstract final class AppStrings {
  static const String appName = 'MOVIES';

  const AppStrings._();
}
