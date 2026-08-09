import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../models/app_user.dart';
import '../../providers/auth_providers.dart';
import '../constants/app_dimens.dart';
import '../extensions/context_extensions.dart';
import '../routes/route_names.dart';

/// Sits above the list on Watchlist/Favorites — a quiet, single-line
/// status rather than a modal or intrusive banner, since it's
/// informational, not something that needs a decision.
class SyncStatusBanner extends ConsumerWidget {
  const SyncStatusBanner({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AppUser user = ref.watch(authStateProvider).asData?.value ?? AppUser.guest;

    if (!user.isGuest) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(
          AppDimens.screenPaddingHorizontal,
          AppDimens.space8,
          AppDimens.screenPaddingHorizontal,
          0,
        ),
        child: Row(
          children: <Widget>[
            Icon(Icons.cloud_done_outlined, size: 16, color: context.colors.onSurfaceVariant),
            const SizedBox(width: AppDimens.space6),
            Text(context.l10n.syncedToAccount, style: context.textTheme.bodySmall),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(
        AppDimens.screenPaddingHorizontal,
        AppDimens.space8,
        AppDimens.screenPaddingHorizontal,
        0,
      ),
      child: InkWell(
        onTap: () => context.push(RouteNames.signIn),
        borderRadius: BorderRadius.circular(AppDimens.radiusSm),
        child: Row(
          children: <Widget>[
            Icon(Icons.cloud_off_outlined, size: 16, color: context.colors.onSurfaceVariant),
            const SizedBox(width: AppDimens.space6),
            Expanded(
              child: Text(context.l10n.localOnlyBanner, style: context.textTheme.bodySmall),
            ),
          ],
        ),
      ),
    );
  }
}
