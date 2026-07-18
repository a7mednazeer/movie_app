import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../providers/language_provider.dart';

/// Shows a modal bottom sheet listing every [AppLanguage]. Selecting an
/// available one updates [languageProvider] immediately; unavailable
/// ones are visibly disabled rather than silently doing nothing.
Future<void> showLanguagePicker(BuildContext context, WidgetRef ref) {
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    builder: (BuildContext sheetContext) {
      return _LanguagePickerSheet(ref: ref);
    },
  );
}

class _LanguagePickerSheet extends StatelessWidget {
  const _LanguagePickerSheet({required this.ref});

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final AppLanguage current = ref.watch(languageProvider);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.screenPaddingHorizontal,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: AppDimens.space8),
              child: Text('Language', style: context.textTheme.headlineSmall),
            ),
            ...AppLanguage.values.map(
              (AppLanguage language) => ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(language.label),
                subtitle: language.isAvailable ? null : const Text('Coming soon'),
                trailing: language == current
                    ? Icon(Icons.check_rounded, color: context.colors.primary)
                    : null,
                enabled: language.isAvailable,
                onTap: () {
                  ref.read(languageProvider.notifier).select(language);
                  Navigator.of(context).pop();
                },
              ),
            ),
            const SizedBox(height: AppDimens.space16),
          ],
        ),
      ),
    );
  }
}
