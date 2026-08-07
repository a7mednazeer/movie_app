import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/asset_paths.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../core/widgets/app_error_view.dart';
import '../../../../models/movie.dart';
import '../providers/recent_searches_provider.dart';
import '../widgets/recent_searches_section.dart';
import '../widgets/search_bar_field.dart';
import '../widgets/search_results_list.dart';
import '../widgets/search_suggestions_section.dart';

/// Live search with debounced queries, persisted recent searches, quick
/// trending suggestions, and dedicated empty / no-results states.
class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});

  @override
  ConsumerState<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends ConsumerState<SearchScreen> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  Timer? _debounce;

  /// Raw text as typed — drives which view (recent/suggestions vs
  /// results) is shown, with no debounce delay so switching feels instant.
  String _rawQuery = '';

  /// The committed query actually sent to [searchResultsProvider], only
  /// updated ~400ms after typing stops (or immediately on submit/tap).
  String _committedQuery = '';

  bool get _isDebouncePending =>
      _rawQuery.trim().isNotEmpty && _rawQuery.trim() != _committedQuery;

  @override
  void dispose() {
    _debounce?.cancel();
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _onChanged(String value) {
    setState(() => _rawQuery = value);
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 400), () {
      if (!mounted) return;
      setState(() => _committedQuery = value.trim());
    });
  }

  void _commit(String value) {
    _debounce?.cancel();
    final String trimmed = value.trim();
    setState(() {
      _rawQuery = value;
      _committedQuery = trimmed;
    });
    if (trimmed.isNotEmpty) {
      ref.read(recentSearchesProvider.notifier).addSearch(trimmed);
    }
  }

  void _selectTerm(String term) {
    _controller.value = TextEditingValue(
      text: term,
      selection: TextSelection.collapsed(offset: term.length),
    );
    _commit(term);
  }

  void _clear() {
    _debounce?.cancel();
    _controller.clear();
    setState(() {
      _rawQuery = '';
      _committedQuery = '';
    });
  }

  void _openMovieDetails(Movie movie) {
    ref.read(recentSearchesProvider.notifier).addSearch(movie.title);
    context.push(RouteNames.movieDetails, extra: movie);
  }

  @override
  Widget build(BuildContext context) {
    final bool showingResults = _rawQuery.trim().isNotEmpty;

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.navSearch)),
      body: Column(
        children: <Widget>[
          SearchBarField(
            controller: _controller,
            focusNode: _focusNode,
            onChanged: _onChanged,
            onSubmitted: _commit,
            onClear: _clear,
          ),
          Expanded(
            child: showingResults
                ? SearchResultsList(
                    query: _committedQuery,
                    isPending: _isDebouncePending,
                    onMovieTap: _openMovieDetails,
                  )
                : _buildIdleState(context),
          ),
        ],
      ),
    );
  }

  Widget _buildIdleState(BuildContext context) {
    final List<String> recent = ref.watch(recentSearchesProvider);

    if (recent.isEmpty) {
      return Column(
        children: <Widget>[
          Expanded(
            child: FullScreenStateView(
              icon: Icons.search_rounded,
              illustrationAsset: AssetPaths.searchIllustration,
              title: context.l10n.startSearching,
              subtitle: context.l10n.startSearchingSubtitle,
            ),
          ),
          SearchSuggestionsSection(onSuggestionTap: _selectTerm),
          const SizedBox(height: 24),
        ],
      );
    }

    return ListView(
      children: <Widget>[
        RecentSearchesSection(onTermSelected: _selectTerm),
        SearchSuggestionsSection(onSuggestionTap: _selectTerm),
        const SizedBox(height: 24),
      ],
    );
  }
}
