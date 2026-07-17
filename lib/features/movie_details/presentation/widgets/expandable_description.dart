import 'package:flutter/material.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/extensions/context_extensions.dart';

/// The movie's overview/synopsis, collapsed to a few lines with a
/// "Read more" toggle for longer descriptions.
class ExpandableDescription extends StatefulWidget {
  const ExpandableDescription({required this.text, super.key});

  final String text;

  @override
  State<ExpandableDescription> createState() => _ExpandableDescriptionState();
}

class _ExpandableDescriptionState extends State<ExpandableDescription> {
  bool _expanded = false;

  static const int _collapsedMaxLines = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.screenPaddingHorizontal),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(AppStrings.overview, style: context.textTheme.headlineSmall),
          const SizedBox(height: AppDimens.space8),
          AnimatedSize(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeOutCubic,
            alignment: Alignment.topLeft,
            child: Text(
              widget.text,
              maxLines: _expanded ? null : _collapsedMaxLines,
              overflow: _expanded ? TextOverflow.visible : TextOverflow.ellipsis,
              style: context.textTheme.bodyLarge,
            ),
          ),
          if (widget.text.length > 140)
            Padding(
              padding: const EdgeInsets.only(top: AppDimens.space4),
              child: InkWell(
                onTap: () => setState(() => _expanded = !_expanded),
                child: Text(
                  _expanded ? AppStrings.readLess : AppStrings.readMore,
                  style: context.textTheme.labelMedium?.copyWith(
                    color: context.colors.primary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
