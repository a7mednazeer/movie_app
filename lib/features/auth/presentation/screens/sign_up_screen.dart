import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../core/utils/validators.dart';
import '../providers/auth_form_providers.dart';
import '../utils/auth_error_messages.dart';
import '../widgets/auth_text_field.dart';

/// Account creation — name, email, password, confirm password. On
/// success, lands straight on Home already signed in (Firebase signs the
/// new account in automatically on creation).
class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    FocusScope.of(context).unfocus();

    final bool success = await ref.read(signUpControllerProvider.notifier).submit(
          email: _emailController.text,
          password: _passwordController.text,
          displayName: _nameController.text.trim(),
        );

    if (success && mounted) {
      context.go(RouteNames.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<void> signUpState = ref.watch(signUpControllerProvider);
    final bool isLoading = signUpState.isLoading;

    ref.listen<AsyncValue<void>>(signUpControllerProvider, (
      AsyncValue<void>? previous,
      AsyncValue<void> next,
    ) {
      final Object? error = next.error;
      if (error is AuthFailure) {
        context.showSnack(authErrorMessage(context, error), isError: true);
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.signUp)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: AppDimens.space24),
                Text(context.l10n.createAccount, style: context.textTheme.headlineMedium),
                const SizedBox(height: AppDimens.space8),
                Text(context.l10n.signUpSubtitle, style: context.textTheme.bodyMedium),
                const SizedBox(height: AppDimens.space32),
                AuthTextField(
                  controller: _nameController,
                  label: context.l10n.nameLabel,
                  autofillHints: const <String>[AutofillHints.name],
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return context.l10n.authErrorFieldRequired;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: AppDimens.space16),
                AuthTextField(
                  controller: _emailController,
                  label: context.l10n.emailLabel,
                  keyboardType: TextInputType.emailAddress,
                  autofillHints: const <String>[AutofillHints.email],
                  validator: (String? value) {
                    if (value == null || !Validators.isValidEmail(value)) {
                      return context.l10n.authErrorInvalidEmail;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: AppDimens.space16),
                AuthTextField(
                  controller: _passwordController,
                  label: context.l10n.passwordLabel,
                  isPassword: true,
                  autofillHints: const <String>[AutofillHints.newPassword],
                  validator: (String? value) {
                    if (value == null || !Validators.isValidPassword(value)) {
                      return context.l10n.authErrorWeakPasswordHint(Validators.minPasswordLength);
                    }
                    return null;
                  },
                ),
                const SizedBox(height: AppDimens.space16),
                AuthTextField(
                  controller: _confirmPasswordController,
                  label: context.l10n.confirmPasswordLabel,
                  isPassword: true,
                  textInputAction: TextInputAction.done,
                  autofillHints: const <String>[AutofillHints.newPassword],
                  validator: (String? value) {
                    if (value != _passwordController.text) {
                      return context.l10n.authErrorPasswordMismatch;
                    }
                    return null;
                  },
                  onFieldSubmitted: (_) => _submit(),
                ),
                const SizedBox(height: AppDimens.space24),
                ElevatedButton(
                  onPressed: isLoading ? null : _submit,
                  child: isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.black),
                        )
                      : Text(context.l10n.signUp),
                ),
                const SizedBox(height: AppDimens.space24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(context.l10n.alreadyHaveAccount, style: context.textTheme.bodyMedium),
                    TextButton(
                      onPressed: isLoading ? null : () => context.pop(),
                      child: Text(context.l10n.signIn),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
