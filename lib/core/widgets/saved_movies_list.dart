import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/movie.dart';
import '../constants/app_colors.dart';
import '../constants/app_dimens.dart';
import 'app_error_view.dart';
import 'movie_wide_card.dart';
import 'shimmer_box.dart';

/// A vertical list of saved movies with swipe-to-remove, used by both the
/// Watchlist and Favorites screens. Handles loading/error/empty states
/// itself; the caller only supplies the data and what "remove" means.
class SavedMoviesList extends StatelessWidget {
  const SavedMoviesList({
    required this.moviesAsync,
    required this.onRemove,
    required this.onMovieTap,
    required this.onRetry,
    required this.emptyIcon,
    required this.emptyTitle,
    required this.emptySubtitle,
    super.key,
  });

  final AsyncValue<List<Movie>> moviesAsync;
  final void Function(BuildContext context, Movie movie) onRemove;
  final ValueChanged<Movie> onMovieTap;
  final VoidCallback onRetry;
  final IconData emptyIcon;
  final String emptyTitle;
  final String emptySubtitle;

  @override
  Widget build(BuildContext context) {
    return moviesAsync.when(
      loading: _buildShimmerList,
      error: (Object error, StackTrace stackTrace) => Center(
        child: Padding(
          padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
          child: InlineErrorView(onRetry: onRetry),
        ),
      ),
      data: (List<Movie> movies) {
        if (movies.isEmpty) {
          return FullScreenStateView(
            icon: emptyIcon,
            title: emptyTitle,
            subtitle: emptySubtitle,
          );
        }
        return ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: AppDimens.space8),
          itemCount: movies.length,
          itemBuilder: (BuildContext context, int index) {
            final Movie movie = movies[index];
            return Dismissible(
              key: ValueKey<int>(movie.id),
              direction: DismissDirection.endToStart,
              onDismissed: (_) => onRemove(context, movie),
              background: Container(
                alignment: Alignment.centerRight,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.screenPaddingHorizontal,
                ),
                color: AppColors.error,
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(Icons.delete_outline_rounded, color: Colors.white),
                    SizedBox(width: AppDimens.space8),
                    Text('Remove', style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
              child: MovieWideCard(
                movie: movie,
                isSaved: true,
                onTap: () => onMovieTap(movie),
                onToggleSaved: (int id) => onRemove(context, movie),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildShimmerList() {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimens.screenPaddingHorizontal,
        vertical: AppDimens.space12,
      ),
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: AppDimens.space12),
          child: Row(
            children: <Widget>[
              ShimmerBox(width: 84, height: 126, borderRadius: AppDimens.radiusSm),
              SizedBox(width: AppDimens.space12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    ShimmerBox(width: double.infinity, height: 14),
                    SizedBox(height: 8),
                    ShimmerBox(width: 120, height: 12),
                    SizedBox(height: 8),
                    ShimmerBox(width: 90, height: 12),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
