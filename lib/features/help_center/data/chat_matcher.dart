import 'faq_catalog.dart';

/// A very deliberately *simple* FAQ matcher: no ML, no network call, no
/// per-language keyword lists to maintain — just character-trigram
/// (3-character sliding window) overlap between the user's message and
/// each FAQ entry's question text.
///
/// Trigram overlap was chosen specifically because it needs no
/// word-tokenization step, which matters a lot here: this app ships in
/// 12 languages, several of which (Chinese, Korean, and to a lesser
/// extent Hindi) don't reliably tokenize on whitespace the way English/
/// Spanish/French do. A matcher built around splitting on spaces would
/// quietly work in some languages and quietly fail in others. Trigram
/// overlap treats every language the same way.
///
/// This is honestly a small, rule-based matcher, not a real NLU model —
/// see the README for how to swap in a real AI backend (matching the
/// same "works today, upgrades later" pattern as TMDB and Firebase).
abstract final class ChatMatcher {
  /// Below this similarity score, [findBestMatch] returns `null` rather
  /// than a low-confidence guess.
  static const double _matchThreshold = 0.12;

  static Set<String> _trigrams(String text) {
    final String normalized = text.toLowerCase().trim();
    if (normalized.length < 3) return <String>{normalized};
    return <String>{
      for (int i = 0; i <= normalized.length - 3; i++) normalized.substring(i, i + 3),
    };
  }

  static double _similarity(Set<String> a, Set<String> b) {
    if (a.isEmpty || b.isEmpty) return 0;
    final int intersection = a.intersection(b).length;
    final int union = a.union(b).length;
    return union == 0 ? 0 : intersection / union;
  }

  /// Returns the best-matching [FaqEntry] for [query], or `null` if
  /// nothing scores above the confidence threshold.
  static FaqEntry? findBestMatch(String query, List<FaqEntry> entries) {
    final Set<String> queryTrigrams = _trigrams(query);
    if (queryTrigrams.isEmpty) return null;

    FaqEntry? best;
    double bestScore = 0;

    for (final FaqEntry entry in entries) {
      final double score = _similarity(queryTrigrams, _trigrams(entry.question));
      if (score > bestScore) {
        bestScore = score;
        best = entry;
      }
    }

    return bestScore >= _matchThreshold ? best : null;
  }
}
