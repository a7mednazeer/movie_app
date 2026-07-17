import 'package:flutter/material.dart';

/// Centralized color palette for the entire application.
///
/// Colors are split into brand colors (identical across themes) and
/// theme-specific colors (dark / light) so the rest of the app never
/// hardcodes a [Color] value directly.
abstract final class AppColors {
  // ---------------------------------------------------------------------
  // Brand colors — consistent across both themes.
  // ---------------------------------------------------------------------
  static const Color primary = Color(0xFFE8A33D); // premium amber/gold
  static const Color primaryLight = Color(0xFFF4C468);
  static const Color primaryDark = Color(0xFFC7841F);

  static const Color secondary = Color(0xFF4DB6E5); // cool accent
  static const Color success = Color(0xFF3FBF7F);
  static const Color error = Color(0xFFE5484D);
  static const Color warning = Color(0xFFF5A623);

  static const Color ratingGold = Color(0xFFF5C518); // IMDb-inspired star

  // ---------------------------------------------------------------------
  // Dark theme surface colors (default / primary experience).
  // ---------------------------------------------------------------------
  static const Color darkBackground = Color(0xFF0B0C10);
  static const Color darkSurface = Color(0xFF16181D);
  static const Color darkSurfaceElevated = Color(0xFF1E2128);
  static const Color darkSurfaceCard = Color(0xFF1A1D23);
  static const Color darkBorder = Color(0xFF2A2E37);
  static const Color darkDivider = Color(0xFF23262E);

  static const Color darkTextPrimary = Color(0xFFF5F6F8);
  static const Color darkTextSecondary = Color(0xFFA6ABB8);
  static const Color darkTextTertiary = Color(0xFF6B7080);

  // ---------------------------------------------------------------------
  // Light theme surface colors.
  // ---------------------------------------------------------------------
  static const Color lightBackground = Color(0xFFF7F7F9);
  static const Color lightSurface = Color(0xFFFFFFFF);
  static const Color lightSurfaceElevated = Color(0xFFFFFFFF);
  static const Color lightSurfaceCard = Color(0xFFFFFFFF);
  static const Color lightBorder = Color(0xFFE6E7EB);
  static const Color lightDivider = Color(0xFFEDEEF1);

  static const Color lightTextPrimary = Color(0xFF15171C);
  static const Color lightTextSecondary = Color(0xFF585D6B);
  static const Color lightTextTertiary = Color(0xFF8A8FA0);

  // ---------------------------------------------------------------------
  // Gradients & overlays.
  // ---------------------------------------------------------------------
  static const LinearGradient posterFadeGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: <Color>[Colors.transparent, Color(0xE6000000)],
  );

  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[primaryLight, primary, primaryDark],
  );

  static const Color scrimLight = Color(0x66000000);
  static const Color scrimStrong = Color(0xB3000000);

  const AppColors._();
}
