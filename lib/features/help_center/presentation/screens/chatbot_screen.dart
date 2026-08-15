import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_dimens.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../models/chat_message.dart';
import '../providers/chat_provider.dart';

/// A lightweight FAQ chatbot — see `ChatMatcher`'s doc comment for
/// exactly how it decides what to answer, and the README for how to
/// swap in a real AI backend later.
class ChatbotScreen extends ConsumerStatefulWidget {
  const ChatbotScreen({super.key});

  @override
  ConsumerState<ChatbotScreen> createState() => _ChatbotScreenState();
}

class _ChatbotScreenState extends ConsumerState<ChatbotScreen> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  bool _greeted = false;

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) return;
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    });
  }

  void _send() {
    final String text = _controller.text;
    if (text.trim().isEmpty) return;
    ref.read(chatControllerProvider.notifier).sendMessage(text, context.l10n);
    _controller.clear();
    _scrollToBottom();
  }

  @override
  Widget build(BuildContext context) {
    if (!_greeted) {
      _greeted = true;
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ref.read(chatControllerProvider.notifier).reset(context.l10n);
      });
    }

    final List<ChatMessage> messages = ref.watch(chatControllerProvider);

    ref.listen<List<ChatMessage>>(chatControllerProvider, (_, __) => _scrollToBottom());

    return Scaffold(
      appBar: AppBar(title: Text(context.l10n.chatbotTitle)),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                padding: const EdgeInsets.all(AppDimens.screenPaddingHorizontal),
                itemCount: messages.length,
                itemBuilder: (BuildContext context, int index) {
                  final ChatMessage message = messages[index];
                  return _ChatBubble(message: message);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                AppDimens.screenPaddingHorizontal,
                AppDimens.space8,
                AppDimens.screenPaddingHorizontal,
                AppDimens.space8,
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      textInputAction: TextInputAction.send,
                      onSubmitted: (_) => _send(),
                      decoration: InputDecoration(hintText: context.l10n.chatbotInputHint),
                    ),
                  ),
                  const SizedBox(width: AppDimens.space8),
                  IconButton.filled(
                    onPressed: _send,
                    icon: const Icon(Icons.send_rounded),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: AppDimens.space8),
              child: TextButton(
                onPressed: () => context.push('${RouteNames.helpCenter}/contact'),
                child: Text(context.l10n.chatbotContactHumanPrompt),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChatBubble extends StatelessWidget {
  const _ChatBubble({required this.message});

  final ChatMessage message;

  @override
  Widget build(BuildContext context) {
    final bool isUser = message.isUser;

    return Align(
      alignment: isUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        constraints: BoxConstraints(maxWidth: context.screenWidth * 0.78),
        margin: const EdgeInsets.only(bottom: AppDimens.space12),
        padding: const EdgeInsets.symmetric(
          horizontal: AppDimens.space16,
          vertical: AppDimens.space12,
        ),
        decoration: BoxDecoration(
          color: isUser ? AppColors.primary : context.colors.surfaceContainerHighest,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(AppDimens.radiusMd),
            topRight: const Radius.circular(AppDimens.radiusMd),
            bottomLeft: Radius.circular(isUser ? AppDimens.radiusMd : AppDimens.radiusXs),
            bottomRight: Radius.circular(isUser ? AppDimens.radiusXs : AppDimens.radiusMd),
          ),
        ),
        child: Text(
          message.text,
          style: context.textTheme.bodyMedium?.copyWith(
            color: isUser ? Colors.black : context.colors.onSurface,
          ),
        ),
      ),
    );
  }
}
