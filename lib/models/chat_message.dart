import 'package:equatable/equatable.dart';

/// One message in the Help Center chatbot conversation.
class ChatMessage extends Equatable {
  const ChatMessage({
    required this.text,
    required this.isUser,
    required this.timestamp,
    this.matchedFaqId,
  });

  final String text;
  final bool isUser;
  final DateTime timestamp;

  /// Which FAQ entry (if any) this bot reply came from — lets the UI
  /// offer a "View in FAQ" shortcut without re-running the matcher.
  final String? matchedFaqId;

  @override
  List<Object?> get props => <Object?>[text, isUser, timestamp, matchedFaqId];
}
