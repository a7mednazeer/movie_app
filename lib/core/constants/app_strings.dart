/// Centralized user-facing copy.
///
/// Keeping strings here (instead of scattered as string literals) makes it
/// trivial to wire up real localization (e.g. via `intl`/ARB files) later
/// without touching widget code.
abstract final class AppStrings {
  static const String appName = 'MOVIES';
  static const String appTagline = 'Your world of cinema';

  // Navigation.
  static const String navHome = 'Home';
  static const String navSearch = 'Search';
  static const String navBrowse = 'Browse';
  static const String navWatchlist = 'Watchlist';
  static const String navProfile = 'Profile';

  // Home.
  static const String sectionTrending = 'Trending Now';
  static const String sectionPopular = 'Popular Movies';
  static const String sectionTopRated = 'Top Rated';
  static const String sectionUpcoming = 'Upcoming';
  static const String sectionRecommended = 'Recommended For You';
  static const String sectionNewReleases = 'New Releases';
  static const String sectionCategories = 'Categories';
  static const String seeAll = 'See All';

  // Movie details.
  static const String moreLikeThis = 'More Like This';
  static const String cast = 'Cast';
  static const String reviews = 'Reviews';
  static const String overview = 'Overview';
  static const String watchTrailer = 'Watch Trailer';
  static const String addToWatchlist = 'Watchlist';
  static const String removedFromWatchlist = 'Removed from watchlist';
  static const String addedToWatchlist = 'Added to watchlist';
  static const String share = 'Share';
  static const String readMore = 'Read more';
  static const String readLess = 'Read less';

  // Search.
  static const String searchHint = 'Search movies, actors, genres…';
  static const String recentSearches = 'Recent Searches';
  static const String clearAll = 'Clear All';
  static const String noResultsFound = 'No movies found';
  static const String noResultsSubtitle = 'Try a different title, actor, or genre.';
  static const String startSearching = 'Search for your favorite movies';
  static const String startSearchingSubtitle =
      'Find titles, browse cast, and discover something new.';

  // Browse.
  static const String browseCategory = 'Browse Category';

  // Watchlist.
  static const String watchlistTitle = 'My Watchlist';
  static const String watchlistEmptyTitle = 'Your watchlist is empty';
  static const String watchlistEmptySubtitle =
      'Movies you save will show up here so you never lose track of them.';

  // Errors / states.
  static const String somethingWentWrong = 'Something went wrong';
  static const String noInternetTitle = 'No Internet Connection';
  static const String noInternetSubtitle =
      'Please check your connection and try again.';
  static const String retry = 'Retry';
  static const String genericErrorSubtitle =
      'We hit a snag loading this content. Please try again.';

  const AppStrings._();
}
