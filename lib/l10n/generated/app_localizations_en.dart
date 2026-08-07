// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTagline => 'YOUR WORLD OF CINEMA';

  @override
  String get navHome => 'Home';

  @override
  String get navSearch => 'Search';

  @override
  String get navBrowse => 'Browse';

  @override
  String get navWatchlist => 'Watchlist';

  @override
  String get navProfile => 'Profile';

  @override
  String get sectionTrending => 'Trending Now';

  @override
  String get sectionPopular => 'Popular Movies';

  @override
  String get sectionTopRated => 'Top Rated';

  @override
  String get sectionUpcoming => 'Upcoming';

  @override
  String get sectionRecommended => 'Recommended For You';

  @override
  String get sectionCategories => 'Categories';

  @override
  String get seeAll => 'See All';

  @override
  String get moreLikeThis => 'More Like This';

  @override
  String get cast => 'Cast';

  @override
  String get reviews => 'Reviews';

  @override
  String get noReviewsYet =>
      'No reviews yet — be the first to share your thoughts.';

  @override
  String get overview => 'Overview';

  @override
  String get watchTrailer => 'Watch Trailer';

  @override
  String get noTrailerAvailable => 'No trailer available for this title yet.';

  @override
  String get trailerOpenFailed => 'Couldn\'t open the trailer.';

  @override
  String get addToWatchlist => 'Watchlist';

  @override
  String get removedFromWatchlist => 'Removed from watchlist';

  @override
  String get addedToWatchlist => 'Added to watchlist';

  @override
  String get share => 'Share';

  @override
  String get readMore => 'Read more';

  @override
  String get readLess => 'Read less';

  @override
  String get searchHint => 'Search movies, actors, genres…';

  @override
  String get recentSearches => 'Recent Searches';

  @override
  String get trendingSearches => 'Trending Searches';

  @override
  String get clearAll => 'Clear All';

  @override
  String get clearRecentSearchesMessage =>
      'Remove all of your recent searches? This can\'t be undone.';

  @override
  String get noResultsFound => 'No movies found';

  @override
  String get noResultsSubtitle => 'Try a different title, actor, or genre.';

  @override
  String get startSearching => 'Search for your favorite movies';

  @override
  String get startSearchingSubtitle =>
      'Find titles, browse cast, and discover something new.';

  @override
  String get browseCategory => 'Browse Category';

  @override
  String get noCategoriesAvailable => 'No categories available';

  @override
  String get checkBackLaterGenres => 'Check back later for genres to browse.';

  @override
  String get noMoviesInGenre => 'No movies yet';

  @override
  String get checkBackSoonGenre =>
      'Nothing in this genre right now — check back soon.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'My Watchlist ($count)',
      zero: 'My Watchlist',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'Your watchlist is empty';

  @override
  String get watchlistEmptySubtitle =>
      'Movies you save will show up here so you never lose track of them.';

  @override
  String removedFromWatchlistSnack(String title) {
    return 'Removed \"$title\"';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Favorites ($count)',
      zero: 'Favorites',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'No favorites yet';

  @override
  String get favoritesEmptySubtitle =>
      'Movies you mark as a favorite from Movie Details will show up here.';

  @override
  String removedFromFavoritesSnack(String title) {
    return 'Removed \"$title\" from favorites';
  }

  @override
  String get undo => 'UNDO';

  @override
  String get retry => 'Retry';

  @override
  String get genericErrorSubtitle =>
      'We hit a snag loading this content. Please try again.';

  @override
  String get noInternetSubtitle =>
      'Please check your connection and try again.';

  @override
  String get profileTitle => 'Profile';

  @override
  String get yourLibrary => 'Your Library';

  @override
  String get everythingSaved => 'Everything you\'ve saved, in one place';

  @override
  String get favoritesLabel => 'Favorites';

  @override
  String get watchlistLabel => 'Watchlist';

  @override
  String get settingsLabel => 'Settings';

  @override
  String get settingsSubtitle => 'Theme, language, and about';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get appearance => 'Appearance';

  @override
  String get preferences => 'Preferences';

  @override
  String get languageLabel => 'Language';

  @override
  String get aboutSection => 'About';

  @override
  String get aboutThisApp => 'About This App';

  @override
  String versionLabel(String version) {
    return 'Version $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return 'About $appName';
  }

  @override
  String get aboutDescription =>
      'A premium movie discovery app — browse trending, popular, and top-rated titles, search, and keep track of what you want to watch.';

  @override
  String get tmdbAttribution =>
      'This product uses the TMDB API but is not endorsed or certified by TMDB.';

  @override
  String get visitTmdb => 'Visit TMDB';

  @override
  String get close => 'Close';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeAuto => 'Auto';

  @override
  String get confirm => 'Confirm';

  @override
  String get cancel => 'Cancel';

  @override
  String get removeLabel => 'Remove';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — check out the trailer: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Check out \"$title\" on Movies!';
  }

  @override
  String get notificationsLabel => 'Notifications';

  @override
  String get notificationsSubtitle => 'Manage what you get notified about';

  @override
  String get helpCenterLabel => 'Help Center';

  @override
  String get helpCenterSubtitle => 'FAQs, contact us, and more';

  @override
  String get systemDefault => 'System default';
}
