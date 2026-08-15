import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/utils/url_launcher_helper.dart';
import '../../../../models/app_user.dart';
import '../../../../providers/auth_providers.dart';

/// A real contact form. Submitting opens the device's email app with
/// everything pre-filled (subject, body, and the support address) via
/// `mailto:` — this needs no backend, ticketing system, or API key to
/// actually work, while still being a genuine form the person fills out
/// rather than a bare "email us" link.
class ContactScreen extends ConsumerStatefulWidget {
  const ContactScreen({super.key});

  @override
  ConsumerState<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends ConsumerState<ContactScreen> {
  static const String _supportEmail = 'support@moviesapp.example';

  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;
  late final TextEditingController _emailController;
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final AppUser user = ref.read(authStateProvider).asData?.value ?? AppUser.guest;
    _nameController = TextEditingController(text: user.isGuest ? '' : user.labelOr(''));
    _emailController = TextEditingController(text: user.email ?? '');
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (!(_formKey.currentState?.validate() ?? false)) return;
    FocusScope.of(context).unfocus();

    final String name = _nameController.text.trim();
    final String email = _emailController.text.trim();
    final String subject = _subjectController.text.trim();
    final String body = context.l10n.contactEmailBodyTemplate(
      name,
      email,
      _messageController.text.trim(),
    );

    await openMailComposer(
      context,
      to: _supportEmail,
      subject: subject,
      body: body,
      launchFailedMessage: context.l10n.contactMailAppUnavailable,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.contactUsTitle)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: AppDimens.space8),
                Text(context.l10n.contactUsSubtitle, style: context.textTheme.bodyMedium),
                const SizedBox(height: AppDimens.space24),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: context.l10n.nameLabel),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return context.l10n.authErrorFieldRequired;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: AppDimens.space16),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: context.l10n.emailLabel),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return context.l10n.authErrorFieldRequired;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: AppDimens.space16),
                TextFormField(
                  controller: _subjectController,
                  decoration: InputDecoration(labelText: context.l10n.contactSubjectLabel),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return context.l10n.authErrorFieldRequired;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: AppDimens.space16),
                TextFormField(
                  controller: _messageController,
                  minLines: 5,
                  maxLines: 8,
                  decoration: InputDecoration(labelText: context.l10n.contactMessageLabel),
                  validator: (String? value) {
                    if (value == null || value.trim().isEmpty) {
                      return context.l10n.authErrorFieldRequired;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: AppDimens.space24),
                ElevatedButton(
                  onPressed: _submit,
                  child: Text(context.l10n.contactSendAction),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
