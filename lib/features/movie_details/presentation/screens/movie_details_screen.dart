import 'package:flutter/material.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/utils/url_launcher_helper.dart';
import '../../../../models/movie.dart';
import '../widgets/action_buttons_row.dart';
import '../widgets/cast_section.dart';
import '../widgets/details_sliver_app_bar.dart';
import '../widgets/expandable_description.dart';
import '../widgets/movie_info_header.dart';
import '../widgets/reviews_section.dart';
import '../widgets/similar_movies_section.dart';

/// The full Movie Details experience: collapsing backdrop with a trailer
/// play button, poster + metadata, favorite/watchlist/share/trailer
/// actions, an expandable overview, cast, reviews, and a "More Like
/// This" rail — each section loading and failing independently.
class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({required this.movie, super.key});

  final Movie movie;

  Future<void> _playTrailer(BuildContext context) {
    return openExternalUrl(
      context,
      movie.trailerUrl,
      missingUrlMessage: 'No trailer available for this title yet.',
      launchFailedMessage: 'Couldn\'t open the trailer.',
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          DetailsSliverAppBar(movie: movie, onPlayTrailer: () => _playTrailer(context)),
          SliverToBoxAdapter(child: MovieInfoHeader(movie: movie)),
          SliverToBoxAdapter(child: ActionButtonsRow(movie: movie)),
          SliverToBoxAdapter(child: ExpandableDescription(text: movie.overview)),
          const SliverToBoxAdapter(child: SizedBox(height: AppDimens.space24)),
          SliverToBoxAdapter(child: CastSection(movieId: movie.id)),
          const SliverToBoxAdapter(child: SizedBox(height: AppDimens.space24)),
          SliverToBoxAdapter(child: SimilarMoviesSection(movieId: movie.id)),
          const SliverToBoxAdapter(child: SizedBox(height: AppDimens.space24)),
          SliverToBoxAdapter(child: ReviewsSection(movieId: movie.id)),
          const SliverToBoxAdapter(child: SizedBox(height: AppDimens.space32)),
        ],
      ),
    );
  }
}
