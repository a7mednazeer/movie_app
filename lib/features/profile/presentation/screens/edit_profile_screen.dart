import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/utils/validators.dart';
import '../../../../core/widgets/app_confirm_dialog.dart';
import '../../../../models/app_user.dart';
import '../../../../providers/auth_providers.dart';
import '../../../auth/presentation/utils/auth_error_messages.dart';
import '../providers/edit_profile_controller.dart';

/// Editable display name and photo. The photo field takes a URL today —
/// picking straight from the device's photo library needs `image_picker`
/// plus a Firebase Storage upload step (a new dependency and a new
/// Storage security-rules file), which is a natural, separate next step
/// rather than something to fold in silently here. A URL is still a
/// completely real, working way to set a photo today (paste a link to
/// any hosted image), not a placeholder.
class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _photoUrlController;
  late String _previewUrl;

  @override
  void initState() {
    super.initState();
    final AppUser user = ref.read(authStateProvider).asData?.value ?? AppUser.guest;
    _nameController = TextEditingController(text: user.displayName ?? '');
    _photoUrlController = TextEditingController(text: user.photoUrl ?? '');
    _previewUrl = user.photoUrl ?? '';
    _photoUrlController.addListener(() {
      setState(() => _previewUrl = _photoUrlController.text.trim());
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _photoUrlController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    FocusScope.of(context).unfocus();

    final String name = _nameController.text.trim();
    final String photoUrl = _photoUrlController.text.trim();

    final bool success = await ref.read(editProfileControllerProvider.notifier).submit(
          displayName: name,
          photoUrl: photoUrl.isEmpty ? '' : photoUrl,
        );

    if (!mounted) return;
    if (success) {
      context.showSnack(context.l10n.profileUpdatedSnack);
      context.pop();
    }
  }

  Future<void> _confirmDeleteAccount() async {
    final bool confirmed = await AppConfirmDialog.show(
      context,
      title: context.l10n.deleteAccountConfirmTitle,
      message: context.l10n.deleteAccountConfirmMessage,
      confirmLabel: context.l10n.deleteAccountAction,
    );
    if (!confirmed) return;

    final bool success = await ref.read(deleteAccountControllerProvider.notifier).submit();
    if (!mounted) return;

    if (success) {
      context.showSnack(context.l10n.accountDeletedSnack);
      context.go('/home');
    } else {
      final AsyncValue<void> state = ref.read(deleteAccountControllerProvider);
      final Object? error = state.error;
      final String message = error is AuthFailure
          ? authErrorMessage(context, error)
          : context.l10n.genericErrorSubtitle;
      context.showSnack(message, isError: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<void> saveState = ref.watch(editProfileControllerProvider);
    final bool isLoading = saveState.isLoading;

    ref.listen<AsyncValue<void>>(editProfileControllerProvider, (
      AsyncValue<void>? previous,
      AsyncValue<void> next,
    ) {
      final Object? error = next.error;
      if (error is AuthFailure) {
        context.showSnack(authErrorMessage(context, error), isError: true);
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.editProfile)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: AppDimens.space16),
                Center(child: _AvatarPreview(url: _previewUrl)),
                const SizedBox(height: AppDimens.space32),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: context.l10n.nameLabel),
                  textInputAction: TextInputAction.next,
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return context.l10n.authErrorFieldRequired;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: AppDimens.space16),
                TextFormField(
                  controller: _photoUrlController,
                  decoration: InputDecoration(
                    labelText: context.l10n.photoUrlLabel,
                    hintText: context.l10n.photoUrlFieldHint,
                  ),
                  keyboardType: TextInputType.url,
                  textInputAction: TextInputAction.done,
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) return null;
                    if (!Validators.isValidHttpUrl(value)) {
                      return context.l10n.invalidUrlError;
                    }
                    return null;
                  },
                  onFieldSubmitted: (_) => _save(),
                ),
                const SizedBox(height: AppDimens.space8),
                Text(context.l10n.photoUrlHint, style: context.textTheme.bodySmall),
                const SizedBox(height: AppDimens.space32),
                ElevatedButton(
                  onPressed: isLoading ? null : _save,
                  child: isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.black),
                        )
                      : Text(context.l10n.saveChanges),
                ),
                const SizedBox(height: AppDimens.space32),
                OutlinedButton.icon(
                  onPressed: isLoading ? null : _confirmDeleteAccount,
                  icon: Icon(Icons.delete_outline_rounded, color: context.colors.error),
                  label: Text(
                    context.l10n.deleteAccountAction,
                    style: TextStyle(color: context.colors.error),
                  ),
                  style: OutlinedButton.styleFrom(side: BorderSide(color: context.colors.error)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AvatarPreview extends StatelessWidget {
  const _AvatarPreview({required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 96,
      decoration: const BoxDecoration(gradient: AppColors.primaryGradient, shape: BoxShape.circle),
      clipBehavior: Clip.antiAlias,
      alignment: Alignment.center,
      child: url.isEmpty
          ? const Icon(Icons.person_rounded, size: 48, color: Colors.black)
          : CachedNetworkImage(
              imageUrl: url,
              fit: BoxFit.cover,
              width: 96,
              height: 96,
              errorWidget: (BuildContext context, String url, Object error) =>
                  const Icon(Icons.broken_image_outlined, size: 40, color: Colors.black),
              placeholder: (BuildContext context, String url) => const SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(strokeWidth: 2),
              ),
            ),
    );
  }
}
