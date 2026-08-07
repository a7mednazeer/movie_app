import 'package:flutter/material.dart';

import '../../l10n/generated/app_localizations.dart';

/// Quality-of-life extensions on [BuildContext] used throughout the app to
/// avoid repeating `Theme.of(context)` / `MediaQuery.of(context)` boilerplate.
extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colors => Theme.of(this).colorScheme;

  Size get screenSize => MediaQuery.sizeOf(this);

  double get screenWidth => MediaQuery.sizeOf(this).width;

  double get screenHeight => MediaQuery.sizeOf(this).height;

  EdgeInsets get viewPadding => MediaQuery.viewPaddingOf(this);

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  /// Simple responsive breakpoint helper (tablet / desktop widths).
  bool get isTablet => screenWidth >= 600;

  /// Shorthand for `AppLocalizations.of(context)!` — every translated
  /// string in the app is read as `context.l10n.someKey`. The `!` is safe
  /// because `AppLocalizations` is always installed as a delegate in
  /// `MovieApp` (see `main.dart`), so it's never actually null once the
  /// widget tree has a `Localizations` ancestor.
  AppLocalizations get l10n => AppLocalizations.of(this)!;

  void showSnack(String message, {bool isError = false}) {
    ScaffoldMessenger.of(this)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: isError ? colors.error : null,
        ),
      );
  }
}
