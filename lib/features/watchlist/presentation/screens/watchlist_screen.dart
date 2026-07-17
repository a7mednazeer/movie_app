import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../core/widgets/app_error_view.dart';
import '../../../../core/widgets/movie_wide_card.dart';
import '../../../../core/widgets/shimmer_box.dart';
import '../../../../models/movie.dart';
import '../../../../providers/watchlist_provider.dart';
import '../providers/watchlist_movies_provider.dart';

/// Every movie the user has saved, swipe-to-remove (with an "Undo"
/// snackbar), backed by [watchlistProvider]'s Hive-persisted ids so the
/// list survives app restarts.
class WatchlistScreen extends ConsumerWidget {
  const WatchlistScreen({super.key});

  void _removeWithUndo(BuildContext context, WidgetRef ref, Movie movie) {
    ref.read(watchlistProvider.notifier).toggle(movie.id);
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text('Removed "${movie.title}"'),
          action: SnackBarAction(
            label: 'UNDO',
            onPressed: () => ref.read(watchlistProvider.notifier).toggle(movie.id),
          ),
        ),
      );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Movie>> moviesAsync = ref.watch(watchlistMoviesProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          moviesAsync.maybeWhen(
            data: (List<Movie> movies) => movies.isEmpty
                ? AppStrings.watchlistTitle
                : '${AppStrings.watchlistTitle} (${movies.length})',
            orElse: () => AppStrings.watchlistTitle,
          ),
        ),
      ),
      body: moviesAsync.when(
        loading: _buildShimmerList,
        error: (Object error, StackTrace stackTrace) => Center(
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
            child: InlineErrorView(onRetry: () => ref.invalidate(watchlistMoviesProvider)),
          ),
        ),
        data: (List<Movie> movies) {
          if (movies.isEmpty) {
            return const FullScreenStateView(
              icon: Icons.bookmark_border_rounded,
              title: AppStrings.watchlistEmptyTitle,
              subtitle: AppStrings.watchlistEmptySubtitle,
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
                onDismissed: (_) => _removeWithUndo(context, ref, movie),
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
                  onTap: () => context.push(RouteNames.movieDetails, extra: movie),
                  onToggleSaved: (int id) => _removeWithUndo(context, ref, movie),
                ),
              );
            },
          );
        },
      ),
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
