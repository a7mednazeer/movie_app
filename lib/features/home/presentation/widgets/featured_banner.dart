import 'dart:async';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_app/core/widgets/app_error_view.dart';
import 'package:movie_app/core/widgets/shimmer_box.dart';
import 'package:movie_app/models/movie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';

import '../../../../providers/watchlist_provider.dart';
import '../providers/home_providers.dart';

import '../../../../core/extensions/context_extensions.dart';


class FeaturedBanner extends ConsumerWidget {
  const FeaturedBanner({required this.onMovieTap, super.key});

  final ValueChanged<Movie> onMovieTap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Movie>> trendingAsync = ref.watch(trendingMoviesProvider);

    return SizedBox(
      height: AppDimens.bannerHeight,
      child: trendingAsync.when(
        loading: () => const Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimens.screenPaddingHorizontal),
          child: ShimmerBox(
            width: double.infinity,
            height: double.infinity,
            borderRadius: AppDimens.radiusLg,
          ),
        ),
        error: (Object error, StackTrace stackTrace) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppDimens.screenPaddingHorizontal),
          child: InlineErrorView(onRetry: () => ref.invalidate(trendingMoviesProvider)),
        ),
        data: (List<Movie> movies) {
          if (movies.isEmpty) return const SizedBox.shrink();
          final List<Movie> slides = movies.take(5).toList();
          return _BannerCarousel(movies: slides, onMovieTap: onMovieTap);
        },
      ),
    );
  }
}

class _BannerCarousel extends ConsumerStatefulWidget {
  const _BannerCarousel({required this.movies, required this.onMovieTap});

  final List<Movie> movies;
  final ValueChanged<Movie> onMovieTap;

  @override
  ConsumerState<_BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends ConsumerState<_BannerCarousel> {
  late final PageController _controller = PageController();
  Timer? _autoAdvanceTimer;
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _autoAdvanceTimer = Timer.periodic(const Duration(seconds: 6), (_) {
      if (!mounted || widget.movies.length <= 1) return;
      final int next = (_currentPage + 1) % widget.movies.length;
      _controller.animateToPage(
        next,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeOutCubic,
      );
    });
  }

  @override
  void dispose() {
    _autoAdvanceTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Set<int> savedIds = ref.watch(watchlistProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.screenPaddingHorizontal),
      child: Stack(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(AppDimens.radiusLg),
            child: PageView.builder(
              controller: _controller,
              itemCount: widget.movies.length,
              onPageChanged: (int index) => setState(() => _currentPage = index),
              itemBuilder: (BuildContext context, int index) {
                final Movie movie = widget.movies[index];
                return _BannerSlide(
                  movie: movie,
                  isSaved: savedIds.contains(movie.id),
                  onTap: () => widget.onMovieTap(movie),
                  onToggleSaved: () =>
                      ref.read(watchlistProvider.notifier).toggle(movie.id),
                );
              },
            ),
          ),
          if (widget.movies.length > 1)
            Positioned(
              bottom: AppDimens.space16,
              left: 0,
              right: 0,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: widget.movies.length,
                  effect: const ExpandingDotsEffect(
                    dotHeight: 6,
                    dotWidth: 6,
                    activeDotColor: AppColors.primary,
                    dotColor: Colors.white38,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _BannerSlide extends StatelessWidget {
  const _BannerSlide({
    required this.movie,
    required this.isSaved,
    required this.onTap,
    required this.onToggleSaved,
  });

  final Movie movie;
  final bool isSaved;
  final VoidCallback onTap;
  final VoidCallback onToggleSaved;

  @override
  Widget build(BuildContext context) {
    final String? backdrop = movie.backdropUrl;

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          backdrop == null
              ? Container(color: AppColors.darkSurfaceElevated)
              : CachedNetworkImage(imageUrl: backdrop, fit: BoxFit.cover),
          const DecoratedBox(decoration: BoxDecoration(gradient: AppColors.posterFadeGradient)),
          Positioned(
            top: AppDimens.space16,
            right: AppDimens.space16,
            child: _IconCircleButton(
              icon: isSaved ? Icons.bookmark_rounded : Icons.bookmark_border_rounded,
              iconColor: isSaved ? AppColors.primary : Colors.white,
              onTap: onToggleSaved,
            ),
          ),
          Center(
            child: _IconCircleButton(
              icon: Icons.play_arrow_rounded,
              iconSize: 34,
              size: 64,
              onTap: onTap,
            ),
          ),
          Positioned(
            left: AppDimens.space16,
            right: AppDimens.space16,
            bottom: AppDimens.space32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  movie.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.headlineMedium?.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 6),
                Row(
                  children: <Widget>[
                    Text(
                      movie.releaseYear,
                      style: context.textTheme.bodySmall?.copyWith(color: Colors.white70),
                    ),
                    if (movie.formattedRuntime.isNotEmpty) ...<Widget>[
                      const _Dot(),
                      Text(
                        movie.formattedRuntime,
                        style: context.textTheme.bodySmall?.copyWith(color: Colors.white70),
                      ),
                    ],
                    if (movie.certification != null) ...<Widget>[
                      const _Dot(),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white54),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(
                          movie.certification!,
                          style: const TextStyle(color: Colors.white70, fontSize: 10),
                        ),
                      ),
                    ],
                    const _Dot(),
                    const Icon(Icons.star_rounded, size: 14, color: AppColors.ratingGold),
                    const SizedBox(width: 2),
                    Text(
                      movie.formattedRating,
                      style: context.textTheme.bodySmall?.copyWith(color: Colors.white70),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 6),
      child: Text('•', style: TextStyle(color: Colors.white54, fontSize: 10)),
    );
  }
}

class _IconCircleButton extends StatelessWidget {
  const _IconCircleButton({
    required this.icon,
    required this.onTap,
    this.size = 36,
    this.iconSize = 18,
    this.iconColor = Colors.white,
  });

  final IconData icon;
  final VoidCallback onTap;
  final double size;
  final double iconSize;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: AppColors.scrimStrong,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white24),
        ),
        child: Icon(icon, color: iconColor, size: iconSize),
      ),
    );
  }
}
