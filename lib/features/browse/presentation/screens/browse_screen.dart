import 'package:flutter/material.dart';
import 'package:movie_app/core/widgets/app_error_view.dart';

import '../../../../core/constants/app_strings.dart';

/// Temporary placeholder. The genre grid, honoring an optional
/// `genreId`/`genreName` deep link from Home's category chips, will
/// replace this file's contents when Browse is built.
class BrowseScreen extends StatelessWidget {
  const BrowseScreen({this.genreId, this.genreName, super.key});

  final String? genreId;
  final String? genreName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(AppStrings.browseCategory)),
      body: FullScreenStateView(
        icon: Icons.grid_view_rounded,
        title: genreName ?? AppStrings.browseCategory,
        subtitle: 'The full genre grid is coming next.',
      ),
    );
  }
}
