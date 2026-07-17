import 'package:flutter/material.dart';
import 'package:movie_app/core/widgets/app_error_view.dart';

import '../../../../core/constants/app_strings.dart';

/// Temporary placeholder. Live search, recent searches, and empty/no-
/// results states are the next screen on the build plan and will replace
/// this file's contents.
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.navSearch)),
      body: const FullScreenStateView(
        icon: Icons.search_rounded,
        title: AppStrings.startSearching,
        subtitle: AppStrings.startSearchingSubtitle,
      ),
    );
  }
}
