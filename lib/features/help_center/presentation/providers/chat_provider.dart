import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../../../l10n/generated/app_localizations.dart';
import '../../../../models/chat_message.dart';
import '../../data/chat_matcher.dart';
import '../../data/faq_catalog.dart';

/// Drives the chatbot screen. Conversation history is in-memory only
/// (cleared when the screen is left) — this is a lightweight FAQ
/// assistant, not a support ticket system, so nothing here needs to
/// persist across sessions.
class ChatController extends StateNotifier<List<ChatMessage>> {
  ChatController() : super(<ChatMessage>[]);

  void reset(AppLocalizations l10n) {
    state = <ChatMessage>[
      ChatMessage(text: l10n.chatbotGreeting, isUser: false, timestamp: DateTime.now()),
    ];
  }

  void sendMessage(String text, AppLocalizations l10n) {
    final String trimmed = text.trim();
    if (trimmed.isEmpty) return;

    final List<FaqEntry> faqEntries = buildFaqEntries(l10n);
    final FaqEntry? match = ChatMatcher.findBestMatch(trimmed, faqEntries);

    final ChatMessage userMessage = ChatMessage(
      text: trimmed,
      isUser: true,
      timestamp: DateTime.now(),
    );

    final ChatMessage botReply = match != null
        ? ChatMessage(
            text: match.answer,
            isUser: false,
            timestamp: DateTime.now(),
            matchedFaqId: match.id,
          )
        : ChatMessage(
            text: l10n.chatbotNoMatch,
            isUser: false,
            timestamp: DateTime.now(),
          );

    state = <ChatMessage>[...state, userMessage, botReply];
  }
}

final StateNotifierProvider<ChatController, List<ChatMessage>> chatControllerProvider =
    StateNotifierProvider<ChatController, List<ChatMessage>>(
  (Ref ref) => ChatController(),
);
