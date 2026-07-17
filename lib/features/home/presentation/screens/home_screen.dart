import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../core/widgets/movie_rail_section.dart';
import '../../../../models/genre.dart';
import '../../../../models/movie.dart';
import '../providers/home_providers.dart';
import '../widgets/categories_section.dart';
import '../widgets/featured_banner.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/recommended_section.dart';

/// The app's landing screen: a featured banner carousel followed by
/// categories and a mix of horizontal movie rails and a vertical
/// recommended list — all independently loading, retryable, and
/// refreshable via pull-to-refresh.
class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  void _openMovieDetails(BuildContext context, Movie movie) {
    context.push(RouteNames.movieDetails, extra: movie);
  }

  void _openGenre(BuildContext context, Genre genre) {
    context.go('${RouteNames.browse}?genreId=${genre.id}&genreName=${genre.name}');
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Movie>> trending = ref.watch(trendingMoviesProvider);
    final AsyncValue<List<Movie>> popular = ref.watch(popularMoviesProvider);
    final AsyncValue<List<Movie>> topRated = ref.watch(topRatedMoviesProvider);
    final AsyncValue<List<Movie>> upcoming = ref.watch(upcomingMoviesProvider);

    return Scaffold(
      appBar: HomeAppBar(onSearchTap: () => context.go(RouteNames.search)),
      body: RefreshIndicator(
        onRefresh: () => refreshHome(ref),
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: <Widget>[
            const SliverToBoxAdapter(child: SizedBox(height: AppDimens.space8)),
            SliverToBoxAdapter(
              child: FeaturedBanner(
                onMovieTap: (Movie movie) => _openMovieDetails(context, movie),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: AppDimens.space24)),
            SliverToBoxAdapter(
              child: CategoriesSection(
                onGenreTap: (Genre genre) => _openGenre(context, genre),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: AppDimens.space16)),
            SliverToBoxAdapter(
              child: MovieRailSection(
                title: AppStrings.sectionTrending,
                moviesAsync: trending,
                onRetry: () => ref.invalidate(trendingMoviesProvider),
                onMovieTap: (Movie movie) => _openMovieDetails(context, movie),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: AppDimens.space16)),
            SliverToBoxAdapter(
              child: MovieRailSection(
                title: AppStrings.sectionPopular,
                moviesAsync: popular,
                onRetry: () => ref.invalidate(popularMoviesProvider),
                onMovieTap: (Movie movie) => _openMovieDetails(context, movie),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: AppDimens.space16)),
            SliverToBoxAdapter(
              child: MovieRailSection(
                title: AppStrings.sectionTopRated,
                moviesAsync: topRated,
                onRetry: () => ref.invalidate(topRatedMoviesProvider),
                onMovieTap: (Movie movie) => _openMovieDetails(context, movie),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: AppDimens.space16)),
            SliverToBoxAdapter(
              child: MovieRailSection(
                title: AppStrings.sectionUpcoming,
                moviesAsync: upcoming,
                onRetry: () => ref.invalidate(upcomingMoviesProvider),
                onMovieTap: (Movie movie) => _openMovieDetails(context, movie),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: AppDimens.space16)),
            SliverToBoxAdapter(
              child: RecommendedSection(
                onMovieTap: (Movie movie) => _openMovieDetails(context, movie),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: AppDimens.space32)),
          ],
        ),
      ),
    );
  }
}
