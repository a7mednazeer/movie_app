import 'package:flutter/material.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/utils/url_launcher_helper.dart';

/// A quick star-rating + optional-comment feedback form — separate from
/// Contact Us since feedback is "tell us what you think," not "I have a
/// specific problem to solve." Sent the same real `mailto:` way.
class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  static const String _feedbackEmail = 'feedback@moviesapp.example';

  int _rating = 0;
  final TextEditingController _commentController = TextEditingController();
  bool _submitted = false;

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    if (_rating == 0) {
      context.showSnack(context.l10n.feedbackRatingRequired, isError: true);
      return;
    }

    final String body = context.l10n.feedbackEmailBodyTemplate(
      _rating,
      _commentController.text.trim().isEmpty
          ? context.l10n.feedbackNoComment
          : _commentController.text.trim(),
    );

    await openMailComposer(
      context,
      to: _feedbackEmail,
      subject: context.l10n.feedbackEmailSubject,
      body: body,
      launchFailedMessage: context.l10n.contactMailAppUnavailable,
    );

    if (mounted) setState(() => _submitted = true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.feedbackTitle)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: AppDimens.space8),
              Text(context.l10n.feedbackSubtitle, style: context.textTheme.bodyMedium),
              const SizedBox(height: AppDimens.space24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(5, (int index) {
                  final int starValue = index + 1;
                  return IconButton(
                    iconSize: 36,
                    onPressed: () => setState(() {
                      _rating = starValue;
                      _submitted = false;
                    }),
                    icon: Icon(
                      starValue <= _rating ? Icons.star_rounded : Icons.star_border_rounded,
                      color: AppColors.ratingGold,
                    ),
                  );
                }),
              ),
              const SizedBox(height: AppDimens.space24),
              TextField(
                controller: _commentController,
                minLines: 4,
                maxLines: 6,
                decoration: InputDecoration(hintText: context.l10n.feedbackCommentHint),
              ),
              const SizedBox(height: AppDimens.space24),
              ElevatedButton(
                onPressed: _submit,
                child: Text(context.l10n.feedbackSendAction),
              ),
              if (_submitted) ...<Widget>[
                const SizedBox(height: AppDimens.space16),
                Center(
                  child: Text(
                    context.l10n.feedbackThanks,
                    style: context.textTheme.bodyMedium?.copyWith(color: context.colors.primary),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
