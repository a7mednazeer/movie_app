import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// Centralized typography scale.
///
/// All text styles are built from Google Fonts at runtime so no font
/// assets need to be bundled with the app. Swap [_fontFamily] once a
/// custom brand font is available — every screen picks it up automatically
/// because widgets always read styles from [Theme.of(context).textTheme].
abstract final class AppTextStyles {
  static const String _fontFamily = 'Poppins';

  static TextStyle _base({
    required double fontSize,
    required FontWeight fontWeight,
    double? letterSpacing,
    double? height,
    Color? color,
  }) {
    return GoogleFonts.getFont(
      _fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight,
      letterSpacing: letterSpacing,
      height: height,
      color: color,
    );
  }

  // Display — hero banner titles, splash logo.
  static TextStyle displayLarge({Color? color}) => _base(
        fontSize: 40,
        fontWeight: FontWeight.w800,
        letterSpacing: -0.5,
        height: 1.1,
        color: color,
      );

  static TextStyle displayMedium({Color? color}) => _base(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.4,
        height: 1.15,
        color: color,
      );

  // Headline — screen titles / section headers.
  static TextStyle headlineLarge({Color? color}) => _base(
        fontSize: 26,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.3,
        color: color,
      );

  static TextStyle headlineMedium({Color? color}) => _base(
        fontSize: 22,
        fontWeight: FontWeight.w700,
        letterSpacing: -0.2,
        color: color,
      );

  static TextStyle headlineSmall({Color? color}) => _base(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: color,
      );

  // Title — card titles, movie names.
  static TextStyle titleLarge({Color? color}) => _base(
        fontSize: 17,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle titleMedium({Color? color}) => _base(
        fontSize: 15,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static TextStyle titleSmall({Color? color}) => _base(
        fontSize: 13,
        fontWeight: FontWeight.w600,
        color: color,
      );

  // Body — descriptions, paragraphs.
  static TextStyle bodyLarge({Color? color}) => _base(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: color,
      );

  static TextStyle bodyMedium({Color? color}) => _base(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        height: 1.45,
        color: color,
      );

  static TextStyle bodySmall({Color? color}) => _base(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.4,
        color: color,
      );

  // Label — buttons, chips, nav labels, overline.
  static TextStyle labelLarge({Color? color}) => _base(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.2,
        color: color,
      );

  static TextStyle labelMedium({Color? color}) => _base(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.2,
        color: color,
      );

  static TextStyle labelSmall({Color? color}) => _base(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.4,
        color: color,
      );

  static TextStyle overline({Color? color}) => _base(
        fontSize: 11,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.2,
        color: color,
      );

  const AppTextStyles._();
}
