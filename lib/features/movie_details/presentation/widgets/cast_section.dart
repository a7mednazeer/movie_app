import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/widgets/app_error_view.dart';
import '../../../../core/widgets/section_header.dart';
import '../../../../core/widgets/shimmer_box.dart';
import '../../../../models/cast_member.dart';
import '../providers/movie_details_providers.dart';

/// Horizontal rail of cast members: circular avatar (placeholder today),
/// name, and character — sourced independently from
/// [movieCastProvider] so a slow/failed credits request never blocks
/// the rest of Movie Details.
class CastSection extends ConsumerWidget {
  const CastSection({required this.movieId, super.key});

  final int movieId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<List<CastMember>> castAsync = ref.watch(movieCastProvider(movieId));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SectionHeader(title: AppStrings.cast),
        SizedBox(
          height: 128,
          child: castAsync.when(
            loading: () => _buildShimmerRow(),
            error: (Object error, StackTrace stackTrace) => Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.screenPaddingHorizontal,
              ),
              child: InlineErrorView(
                onRetry: () => ref.invalidate(movieCastProvider(movieId)),
              ),
            ),
            data: (List<CastMember> cast) {
              if (cast.isEmpty) return const SizedBox.shrink();
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(
                  horizontal: AppDimens.screenPaddingHorizontal,
                ),
                itemCount: cast.length,
                separatorBuilder: (_, __) => const SizedBox(width: AppDimens.space16),
                itemBuilder: (BuildContext context, int index) {
                  final CastMember member = cast[index];
                  return _CastAvatar(member: member);
                },
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildShimmerRow() {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: AppDimens.screenPaddingHorizontal),
      itemCount: 5,
      separatorBuilder: (_, __) => const SizedBox(width: AppDimens.space16),
      itemBuilder: (_, __) => const Column(
        children: <Widget>[
          ShimmerBox(width: 68, height: 68, borderRadius: 34),
          SizedBox(height: AppDimens.space8),
          ShimmerBox(width: 60, height: 10),
          SizedBox(height: 4),
          ShimmerBox(width: 44, height: 10),
        ],
      ),
    );
  }
}

class _CastAvatar extends StatelessWidget {
  const _CastAvatar({required this.member});

  final CastMember member;

  String get _initials {
    final List<String> parts = member.name.trim().split(RegExp(r'\s+'));
    if (parts.isEmpty) return '?';
    final String first = parts.first.isNotEmpty ? parts.first[0] : '';
    final String last = parts.length > 1 && parts.last.isNotEmpty ? parts.last[0] : '';
    return (first + last).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 76,
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 34,
            backgroundColor: AppColors.darkSurfaceElevated,
            child: Text(
              _initials,
              style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(height: AppDimens.space8),
          Text(
            member.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: context.textTheme.labelMedium,
          ),
          Text(
            member.character,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: context.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
