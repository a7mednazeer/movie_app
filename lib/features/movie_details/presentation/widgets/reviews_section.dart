import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/app_error_view.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../../core/widgets/shimmer_box.dart';
import '../../../../models/review.dart';
import '../providers/movie_details_providers.dart';

/// Vertical list of user reviews, each with an avatar initial, rating,
/// date, and expandable content — independent from the rest of the
/// screen so a slow/failed reviews fetch doesn't block cast or similar
/// movies.
class ReviewsSection extends ConsumerWidget {
  const ReviewsSection({required this.movieId, super.key});

  final int movieId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<Review>> reviewsAsync = ref.watch(movieReviewsProvider(movieId));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SectionHeader(title: context.l10n.reviews),
        reviewsAsync.when(
          loading: () => const Padding(
            padding: EdgeInsets.symmetric(horizontal: AppDimens.screenPaddingHorizontal),
            child: Column(
              children: <Widget>[
                ShimmerBox(width: double.infinity, height: 96, borderRadius: AppDimens.radiusMd),
                SizedBox(height: AppDimens.space12),
                ShimmerBox(width: double.infinity, height: 96, borderRadius: AppDimens.radiusMd),
              ],
            ),
          ),
          error: (Object error, StackTrace stackTrace) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimens.screenPaddingHorizontal),
            child: InlineErrorView(error: error, onRetry: () => ref.invalidate(movieReviewsProvider(movieId))),
          ),
          data: (List<Review> reviews) {
            if (reviews.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.screenPaddingHorizontal,
                ),
                child: Text(
                  context.l10n.noReviewsYet,
                  style: context.textTheme.bodyMedium,
                ),
              );
            }
            return Column(
              children: reviews
                  .map((Review review) => _ReviewCard(review: review))
                  .toList(),
            );
          },
        ),
      ],
    );
  }
}

class _ReviewCard extends StatefulWidget {
  const _ReviewCard({required this.review});

  final Review review;

  @override
  State<_ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<_ReviewCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    final Review review = widget.review;
    final String initial = review.author.isNotEmpty ? review.author[0].toUpperCase() : '?';

    return Container(
      margin: const EdgeInsets.fromLTRB(
        AppDimens.screenPaddingHorizontal,
        0,
        AppDimens.screenPaddingHorizontal,
        AppDimens.space12,
      ),
      padding: const EdgeInsets.all(AppDimens.space16),
      decoration: BoxDecoration(
        color: context.colors.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(AppDimens.radiusMd),
        border: Border.all(color: context.colors.outline),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              CircleAvatar(
                radius: 18,
                backgroundColor: AppColors.darkSurfaceElevated,
                child: Text(initial, style: const TextStyle(color: Colors.white)),
              ),
              const SizedBox(width: AppDimens.space12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(review.author, style: context.textTheme.titleSmall),
                    if (review.createdAt != null)
                      Text(
                        DateFormat.yMMMd().format(review.createdAt!),
                        style: context.textTheme.bodySmall,
                      ),
                  ],
                ),
              ),
              if (review.rating != null)
                Row(
                  children: <Widget>[
                    const Icon(Icons.star_rounded, size: 16, color: AppColors.ratingGold),
                    const SizedBox(width: 3),
                    Text(review.rating!.toStringAsFixed(1), style: context.textTheme.labelMedium),
                  ],
                ),
            ],
          ),
          const SizedBox(height: AppDimens.space12),
          Text(
            review.content,
            maxLines: _expanded ? null : 3,
            overflow: _expanded ? TextOverflow.visible : TextOverflow.ellipsis,
            style: context.textTheme.bodyMedium,
          ),
          if (review.content.length > 140)
            Padding(
              padding: const EdgeInsets.only(top: AppDimens.space4),
              child: InkWell(
                onTap: () => setState(() => _expanded = !_expanded),
                child: Text(
                  _expanded ? context.l10n.readLess : context.l10n.readMore,
                  style: context.textTheme.labelMedium?.copyWith(color: context.colors.primary),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
