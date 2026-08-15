import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/app_error_view.dart';
import '../../data/faq_catalog.dart';

/// A searchable, expandable FAQ list. Search filters by simple
/// substring match against both question and answer — deliberately
/// simpler than the chatbot's trigram matcher, since here the person is
/// scanning a known list rather than typing a free-form question.
class FaqScreen extends ConsumerStatefulWidget {
  const FaqScreen({super.key});

  @override
  ConsumerState<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends ConsumerState<FaqScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<FaqEntry> allEntries = buildFaqEntries(context.l10n);
    final String normalizedQuery = _query.trim().toLowerCase();
    final List<FaqEntry> filtered = normalizedQuery.isEmpty
        ? allEntries
        : allEntries
            .where(
              (FaqEntry e) =>
                  e.question.toLowerCase().contains(normalizedQuery) ||
                  e.answer.toLowerCase().contains(normalizedQuery),
            )
            .toList();

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.faqTitle)),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(
              AppDimens.screenPaddingHorizontal,
              AppDimens.space12,
              AppDimens.screenPaddingHorizontal,
              AppDimens.space8,
            ),
            child: TextField(
              controller: _searchController,
              onChanged: (String value) => setState(() => _query = value),
              decoration: InputDecoration(
                hintText: context.l10n.faqSearchHint,
                prefixIcon: const Icon(Icons.search_rounded),
                suffixIcon: _query.isEmpty
                    ? null
                    : IconButton(
                        icon: const Icon(Icons.close_rounded),
                        onPressed: () {
                          _searchController.clear();
                          setState(() => _query = '');
                        },
                      ),
              ),
            ),
          ),
          Expanded(
            child: filtered.isEmpty
                ? FullScreenStateView(
                    icon: Icons.help_outline_rounded,
                    title: context.l10n.noResultsFound,
                    subtitle: context.l10n.faqNoResultsSubtitle,
                  )
                : ListView.separated(
                    padding: const EdgeInsets.symmetric(vertical: AppDimens.space8),
                    itemCount: filtered.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(height: 1),
                    itemBuilder: (BuildContext context, int index) {
                      final FaqEntry entry = filtered[index];
                      return ExpansionTile(
                        title: Text(entry.question, style: context.textTheme.titleSmall),
                        childrenPadding: const EdgeInsets.fromLTRB(
                          AppDimens.screenPaddingHorizontal,
                          0,
                          AppDimens.screenPaddingHorizontal,
                          AppDimens.space16,
                        ),
                        children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(entry.answer, style: context.textTheme.bodyMedium),
                          ),
                        ],
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
