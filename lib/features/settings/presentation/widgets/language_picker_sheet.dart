import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../providers/language_provider.dart';

/// Shows a modal bottom sheet listing every [AppLanguage] — all 13 are
/// fully translated and selectable, plus a "System default" option that
/// reverts to following the device's own language.
Future<void> showLanguagePicker(BuildContext context, WidgetRef ref) {
  return showModalBottomSheet<void>(
    context: context,
    showDragHandle: true,
    isScrollControlled: true,
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
    final Locale? current = ref.watch(languageProvider);

    return SafeArea(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: context.screenHeight * 0.8),
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
                child: Text(context.l10n.languageLabel, style: context.textTheme.headlineSmall),
              ),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.smartphone_rounded),
                      title: Text(context.l10n.systemDefault),
                      trailing: current == null
                          ? Icon(Icons.check_rounded, color: context.colors.primary)
                          : null,
                      onTap: () {
                        ref.read(languageProvider.notifier).useSystemLanguage();
                        Navigator.of(context).pop();
                      },
                    ),
                    const Divider(),
                    ...AppLanguage.values.map(
                      (AppLanguage language) => ListTile(
                        contentPadding: EdgeInsets.zero,
                        title: Text(language.label),
                        trailing: current?.languageCode == language.locale.languageCode
                            ? Icon(Icons.check_rounded, color: context.colors.primary)
                            : null,
                        onTap: () {
                          ref.read(languageProvider.notifier).select(language);
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: AppDimens.space16),
            ],
          ),
        ),
      ),
    );
  }
}
