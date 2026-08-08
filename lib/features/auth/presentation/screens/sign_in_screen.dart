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

/// Email/password sign-in, with a "Forgot password?" flow and a link to
/// Sign Up. If Firebase isn't configured, the form still renders (so the
/// UI is always complete) but submitting shows an honest, specific
/// message instead of a confusing generic failure.
class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends ConsumerState<SignInScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    FocusScope.of(context).unfocus();

    final bool success = await ref.read(signInControllerProvider.notifier).submit(
          email: _emailController.text,
          password: _passwordController.text,
        );

    if (success && mounted) {
      context.go(RouteNames.home);
    }
  }

  Future<void> _forgotPassword() async {
    final String email = _emailController.text.trim();
    if (!Validators.isValidEmail(email)) {
      context.showSnack(context.l10n.authEnterEmailFirst, isError: true);
      return;
    }

    final bool sent = await ref.read(passwordResetControllerProvider.notifier).submit(email);
    if (!mounted) return;

    if (sent) {
      context.showSnack(context.l10n.authResetEmailSent(email));
    } else {
      final AsyncValue<void> state = ref.read(passwordResetControllerProvider);
      final Object? error = state.error;
      final String message = error is AuthFailure
          ? authErrorMessage(context, error)
          : context.l10n.genericErrorSubtitle;
      context.showSnack(message, isError: true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<void> signInState = ref.watch(signInControllerProvider);
    final bool isLoading = signInState.isLoading;

    ref.listen<AsyncValue<void>>(signInControllerProvider, (
      AsyncValue<void>? previous,
      AsyncValue<void> next,
    ) {
      final Object? error = next.error;
      if (error is AuthFailure) {
        context.showSnack(authErrorMessage(context, error), isError: true);
      }
    });

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.signIn)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: AppDimens.space24),
                Text(context.l10n.welcomeBack, style: context.textTheme.headlineMedium),
                const SizedBox(height: AppDimens.space8),
                Text(context.l10n.signInSubtitle, style: context.textTheme.bodyMedium),
                const SizedBox(height: AppDimens.space32),
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
                  textInputAction: TextInputAction.done,
                  autofillHints: const <String>[AutofillHints.password],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return context.l10n.authErrorFieldRequired;
                    }
                    return null;
                  },
                  onFieldSubmitted: (_) => _submit(),
                ),
                const SizedBox(height: AppDimens.space8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: isLoading ? null : _forgotPassword,
                    child: Text(context.l10n.forgotPassword),
                  ),
                ),
                const SizedBox(height: AppDimens.space16),
                ElevatedButton(
                  onPressed: isLoading ? null : _submit,
                  child: isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.black),
                        )
                      : Text(context.l10n.signIn),
                ),
                const SizedBox(height: AppDimens.space24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(context.l10n.noAccountYet, style: context.textTheme.bodyMedium),
                    TextButton(
                      onPressed: isLoading ? null : () => context.push(RouteNames.signUp),
                      child: Text(context.l10n.signUp),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: isLoading ? null : () => context.go(RouteNames.home),
                  child: Text(context.l10n.continueAsGuest),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
