import 'package:flutter_test/flutter_test.dart';
import 'package:movie_app/features/help_center/data/chat_matcher.dart';
import 'package:movie_app/features/help_center/data/faq_catalog.dart';

const List<FaqEntry> _entries = <FaqEntry>[
  FaqEntry(
    id: 'search',
    question: 'How do I search for a movie?',
    answer: 'Tap Search in the bottom navigation.',
  ),
  FaqEntry(
    id: 'account',
    question: 'Do I need an account to use the app?',
    answer: 'No, everything works as a guest.',
  ),
  FaqEntry(
    id: 'language',
    question: 'How do I change the language?',
    answer: 'Go to Settings then Language.',
  ),
];

void main() {
  group('ChatMatcher.findBestMatch', () {
    test('matches a query that closely mirrors an FAQ question', () {
      final FaqEntry? match = ChatMatcher.findBestMatch(
        'How do I search for a movie?',
        _entries,
      );

      expect(match?.id, 'search');
    });

    test('matches a partial / reworded query to the closest question', () {
      final FaqEntry? match = ChatMatcher.findBestMatch('search for a movie', _entries);

      expect(match?.id, 'search');
    });

    test('is case-insensitive', () {
      final FaqEntry? match = ChatMatcher.findBestMatch(
        'HOW DO I SEARCH FOR A MOVIE?',
        _entries,
      );

      expect(match?.id, 'search');
    });

    test('returns null for a query unrelated to any FAQ entry', () {
      final FaqEntry? match = ChatMatcher.findBestMatch(
        'xyz completely unrelated gibberish 12345',
        _entries,
      );

      expect(match, isNull);
    });

    test('returns null for an empty query', () {
      final FaqEntry? match = ChatMatcher.findBestMatch('', _entries);

      expect(match, isNull);
    });

    test('returns null when given an empty entry list', () {
      final FaqEntry? match = ChatMatcher.findBestMatch('anything at all', const <FaqEntry>[]);

      expect(match, isNull);
    });

    test('distinguishes between two different but related questions', () {
      final FaqEntry? accountMatch = ChatMatcher.findBestMatch(
        'do I need an account',
        _entries,
      );
      final FaqEntry? languageMatch = ChatMatcher.findBestMatch(
        'how do I change the language',
        _entries,
      );

      expect(accountMatch?.id, 'account');
      expect(languageMatch?.id, 'language');
    });

    test('works without whitespace-based tokenization (e.g. Chinese-style input)', () {
      // No spaces at all — a matcher that relied on splitting on
      // whitespace would treat this as one giant unmatched token and
      // fail; trigram overlap should still find the right entry.
      const List<FaqEntry> noSpaceEntries = <FaqEntry>[
        FaqEntry(id: 'zh_search', question: '如何搜索电影', answer: '点击底部导航栏的搜索'),
        FaqEntry(id: 'zh_account', question: '使用本应用需要账户吗', answer: '不需要'),
      ];

      final FaqEntry? match = ChatMatcher.findBestMatch('如何搜索电影呢', noSpaceEntries);

      expect(match?.id, 'zh_search');
    });
  });
}
