import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../constants/app_colors.dart';
import '../constants/app_dimens.dart';


class ShimmerBox extends StatelessWidget {
  const ShimmerBox({
    required this.width,
    required this.height,
    this.borderRadius = AppDimens.radiusSm,
    super.key,
  });

  final double width;
  final double height;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final bool isDark = context.isDarkMode;
    final Color base = isDark ? AppColors.darkSurfaceElevated : AppColors.lightBorder;
    final Color highlight =
        isDark ? const Color(0xFF2A2E37) : const Color(0xFFF3F3F5);

    return Shimmer.fromColors(
      baseColor: base,
      highlightColor: highlight,
      period: const Duration(milliseconds: 1400),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: base,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
