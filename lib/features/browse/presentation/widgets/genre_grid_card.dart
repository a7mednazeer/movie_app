import 'package:flutter/material.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/app_text_styles.dart';

/// A gradient-backed category card for Browse's genre grid.
///
/// Each genre gets a deterministic gradient (picked from a small curated
/// palette by `genreId`), so the grid reads as colorful and intentional
/// without needing real genre artwork.
class GenreGridCard extends StatelessWidget {
  const GenreGridCard({
    required this.genreId,
    required this.name,
    required this.onTap,
    super.key,
  });

  final int genreId;
  final String name;
  final VoidCallback onTap;

  static const List<List<Color>> _palette = <List<Color>>[
    <Color>[Color(0xFF6A3DE8), Color(0xFF2C1E6B)],
    <Color>[Color(0xFFE8503D), Color(0xFF6B1E1E)],
    <Color>[Color(0xFF3DA8E8), Color(0xFF1E3E6B)],
    <Color>[Color(0xFFE8A33D), Color(0xFF6B4A1E)],
    <Color>[Color(0xFF3DE8A0), Color(0xFF1E6B4F)],
    <Color>[Color(0xFFE83D9E), Color(0xFF6B1E4C)],
    <Color>[Color(0xFF8FE83D), Color(0xFF4A6B1E)],
    <Color>[Color(0xFF3D5AE8), Color(0xFF1E246B)],
  ];

  @override
  Widget build(BuildContext context) {
    final List<Color> colors = _palette[genreId % _palette.length];

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppDimens.radiusMd),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimens.radiusMd),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colors,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              right: -12,
              bottom: -18,
              child: Icon(
                Icons.local_movies_rounded,
                size: 96,
                color: Colors.white.withOpacity(0.12),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppDimens.space16),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  name,
                  style: AppTextStyles.titleLarge(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
