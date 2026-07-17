import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../models/movie.dart';

/// Collapsing backdrop header for Movie Details. Pins a translucent back
/// button and a functional share action over the backdrop image (or a
/// themed fallback if no backdrop is available).
class DetailsSliverAppBar extends StatelessWidget {
  const DetailsSliverAppBar({required this.movie, required this.onPlayTrailer, super.key});

  final Movie movie;
  final VoidCallback onPlayTrailer;

  void _shareMovie() {
    final String text = movie.trailerUrl != null
        ? '${movie.title} — check out the trailer: ${movie.trailerUrl}'
        : 'Check out "${movie.title}" on Movies!';
    Share.share(text);
  }

  @override
  Widget build(BuildContext context) {
    final String? backdrop = movie.backdropUrl;

    return SliverAppBar(
      pinned: true,
      stretch: true,
      expandedHeight: AppDimens.backdropHeight,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      leading: _CircleIconButton(
        icon: Icons.arrow_back_rounded,
        onTap: () => Navigator.of(context).maybePop(),
      ),
      actions: <Widget>[
        _CircleIconButton(icon: Icons.ios_share_rounded, onTap: _shareMovie),
        const SizedBox(width: AppDimens.space16),
      ],
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const <StretchMode>[
          StretchMode.zoomBackground,
          StretchMode.fadeTitle,
        ],
        background: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            backdrop == null
                ? Container(color: AppColors.darkSurfaceElevated)
                : CachedNetworkImage(imageUrl: backdrop, fit: BoxFit.cover),
            const DecoratedBox(
              decoration: BoxDecoration(gradient: AppColors.posterFadeGradient),
            ),
            Center(
              child: Material(
                color: AppColors.scrimStrong,
                shape: const CircleBorder(),
                child: InkWell(
                  onTap: onPlayTrailer,
                  customBorder: const CircleBorder(),
                  child: const Padding(
                    padding: EdgeInsets.all(AppDimens.space16),
                    child: Icon(Icons.play_arrow_rounded, color: Colors.white, size: 32),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CircleIconButton extends StatelessWidget {
  const _CircleIconButton({required this.icon, required this.onTap});

  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimens.space8),
      child: Material(
        color: AppColors.scrimStrong,
        shape: const CircleBorder(),
        child: InkWell(
          onTap: onTap,
          customBorder: const CircleBorder(),
          child: Padding(
            padding: const EdgeInsets.all(AppDimens.space8),
            child: Icon(icon, color: Colors.white, size: AppDimens.iconMd),
          ),
        ),
      ),
    );
  }
}
