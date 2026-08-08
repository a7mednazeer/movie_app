import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../models/app_user.dart';
import '../../../../providers/auth_providers.dart';

/// Screen to edit user information (display name, photo URL).
class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _photoController;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    final user = ref.read(authStateProvider).asData?.value ?? AppUser.guest;
    _nameController = TextEditingController(text: user.displayName);
    _photoController = TextEditingController(text: user.photoUrl);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _photoController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;

    setState(() => _isLoading = true);
    final repo = ref.read(authRepositoryProvider);
    final result = await repo.updateProfile(
      displayName: _nameController.text.trim(),
      photoUrl: _photoController.text.trim().isEmpty ? null : _photoController.text.trim(),
    );

    if (!mounted) return;
    setState(() => _isLoading = false);

    result.fold(
      (failure) => context.showSnack(failure.message, isError: true),
      (_) {
        context.showSnack(context.l10n.profileUpdated);
        Navigator.of(context).pop();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n.editInformation),
        actions: [
          if (!_isLoading)
            TextButton(
              onPressed: _save,
              child: Text(context.l10n.save),
            ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: AppDimens.space16),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: context.l10n.displayName,
                  hintText: context.l10n.enterName,
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return context.l10n.authErrorFieldRequired;
                  }
                  return null;
                },
              ),
              const SizedBox(height: AppDimens.space20),
              TextFormField(
                controller: _photoController,
                decoration: InputDecoration(
                  labelText: context.l10n.photoUrl,
                  hintText: 'https://example.com/avatar.jpg',
                ),
                keyboardType: TextInputType.url,
              ),
              if (_isLoading) ...[
                const SizedBox(height: AppDimens.space32),
                const Center(child: CircularProgressIndicator()),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
