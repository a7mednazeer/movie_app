import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';


class GenreChip extends StatelessWidget {
  const GenreChip({required this.label, required this.onTap, super.key});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(AppDimens.radiusPill),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          color: context.colors.surfaceContainerHighest,
          borderRadius: BorderRadius.circular(AppDimens.radiusPill),
          border: Border.all(color: context.colors.outline),
        ),
        child: Text(label, style: context.textTheme.labelMedium),
      ),
    );
  }
}
