import '../../../l10n/generated/app_localizations.dart';

/// One FAQ topic, already resolved to the active locale's text.
class FaqEntry {
  const FaqEntry({required this.id, required this.question, required this.answer});

  final String id;
  final String question;
  final String answer;
}

/// The full FAQ set, in the current locale.
///
/// Both `FaqScreen` and the chatbot's matcher (`ChatMatcher`) read from
/// this single list — the chatbot works in every one of the 12
/// languages "for free" because it matches against whatever language
/// [l10n] already resolved to, rather than a hardcoded English keyword
/// set.
List<FaqEntry> buildFaqEntries(AppLocalizations l10n) {
  return <FaqEntry>[
    FaqEntry(id: 'about_app', question: l10n.faqQAboutApp, answer: l10n.faqAAboutApp),
    FaqEntry(id: 'search', question: l10n.faqQSearch, answer: l10n.faqASearch),
    FaqEntry(
      id: 'watchlist_vs_favorites',
      question: l10n.faqQWatchlistVsFavorites,
      answer: l10n.faqAWatchlistVsFavorites,
    ),
    FaqEntry(id: 'save_movie', question: l10n.faqQSaveMovie, answer: l10n.faqASaveMovie),
    FaqEntry(id: 'need_account', question: l10n.faqQNeedAccount, answer: l10n.faqANeedAccount),
    FaqEntry(id: 'sign_in', question: l10n.faqQSignIn, answer: l10n.faqASignIn),
    FaqEntry(id: 'sync_devices', question: l10n.faqQSyncDevices, answer: l10n.faqASyncDevices),
    FaqEntry(id: 'offline', question: l10n.faqQOffline, answer: l10n.faqAOffline),
    FaqEntry(
      id: 'change_language',
      question: l10n.faqQChangeLanguage,
      answer: l10n.faqAChangeLanguage,
    ),
    FaqEntry(id: 'change_theme', question: l10n.faqQChangeTheme, answer: l10n.faqAChangeTheme),
    FaqEntry(id: 'watch_trailer', question: l10n.faqQWatchTrailer, answer: l10n.faqAWatchTrailer),
    FaqEntry(
      id: 'delete_account',
      question: l10n.faqQDeleteAccount,
      answer: l10n.faqADeleteAccount,
    ),
    FaqEntry(
      id: 'contact_support',
      question: l10n.faqQContactSupport,
      answer: l10n.faqAContactSupport,
    ),
  ];
}
