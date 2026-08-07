import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/app_confirm_dialog.dart';
import '../providers/recent_searches_provider.dart';

/// Shown when the search field is empty: the user's past searches, each
/// tappable to re-run instantly, each individually removable, with a
/// "Clear All" action (behind a confirm dialog since it's destructive).
class RecentSearchesSection extends ConsumerWidget {
  const RecentSearchesSection({required this.onTermSelected, super.key});

  final ValueChanged<String> onTermSelected;

  Future<void> _confirmClearAll(BuildContext context, WidgetRef ref) async {
    final bool confirmed = await AppConfirmDialog.show(
      context,
      title: context.l10n.clearAll,
      message: context.l10n.clearRecentSearchesMessage,
      confirmLabel: context.l10n.clearAll,
    );
    if (confirmed) {
      await ref.read(recentSearchesProvider.notifier).clearAll();
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> recent = ref.watch(recentSearchesProvider);
    if (recent.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(
            AppDimens.screenPaddingHorizontal,
            AppDimens.space16,
            AppDimens.screenPaddingHorizontal,
            AppDimens.space8,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  context.l10n.recentSearches,
                  style: context.textTheme.headlineSmall,
                ),
              ),
              TextButton(
                onPressed: () => _confirmClearAll(context, ref),
                child: Text(context.l10n.clearAll),
              ),
            ],
          ),
        ),
        ...recent.map(
          (String term) => ListTile(
            leading: const Icon(Icons.history_rounded),
            title: Text(term),
            trailing: IconButton(
              icon: const Icon(Icons.close_rounded, size: 18),
              onPressed: () => ref.read(recentSearchesProvider.notifier).removeSearch(term),
            ),
            onTap: () => onTermSelected(term),
          ),
        ),
      ],
    );
  }
}
