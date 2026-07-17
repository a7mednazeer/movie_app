/// Centralized spacing, radius, and sizing constants.
///
/// Using a fixed spacing scale (4pt grid) keeps every screen visually
/// consistent and makes global layout tweaks trivial.
abstract final class AppDimens {
  // Spacing scale (4pt grid).
  static const double space2 = 2;
  static const double space4 = 4;
  static const double space6 = 6;
  static const double space8 = 8;
  static const double space12 = 12;
  static const double space16 = 16;
  static const double space20 = 20;
  static const double space24 = 24;
  static const double space32 = 32;
  static const double space40 = 40;
  static const double space48 = 48;
  static const double space64 = 64;

  // Page padding.
  static const double screenPaddingHorizontal = 20;
  static const double screenPaddingVertical = 16;

  // Border radii.
  static const double radiusXs = 6;
  static const double radiusSm = 10;
  static const double radiusMd = 14;
  static const double radiusLg = 18;
  static const double radiusXl = 24;
  static const double radiusPill = 999;

  // Elevation.
  static const double elevationNone = 0;
  static const double elevationSm = 2;
  static const double elevationMd = 6;
  static const double elevationLg = 12;

  // Component sizing.
  static const double bottomNavHeight = 68;
  static const double appBarHeight = 56;
  static const double iconSm = 16;
  static const double iconMd = 22;
  static const double iconLg = 28;
  static const double iconXl = 36;

  // Movie card sizing (portrait poster cards used in horizontal rails).
  static const double posterCardWidth = 128;
  static const double posterCardAspectRatio = 2 / 3;

  // Backdrop / banner sizing.
  static const double bannerHeight = 460;
  static const double backdropHeight = 320;

  const AppDimens._();
}
