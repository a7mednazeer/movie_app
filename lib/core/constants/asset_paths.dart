/// Centralized asset path constants.
///
/// No real binary assets are bundled with this project yet — every path
/// below simply reserves the location. Drop the matching files into
/// `assets/images`, `assets/posters`, or `assets/icons` and these
/// references will resolve automatically without touching widget code.
abstract final class AssetPaths {
  static const String _images = 'assets/images';
  static const String _posters = 'assets/posters';
  static const String _icons = 'assets/icons';

  // Branding.
  static const String logo = '$_images/logo.png';
  static const String logoMark = '$_images/logo_mark.png';

  // Placeholders / fallbacks.
  static const String moviePlaceholder = '$_images/movie_placeholder.png';
  static const String posterPlaceholder = '$_posters/poster_placeholder.png';
  static const String backdropPlaceholder = '$_images/backdrop_placeholder.png';
  static const String avatarPlaceholder = '$_images/avatar_placeholder.png';

  // Empty / error state illustrations.
  static const String emptySearchIllustration = '$_images/empty_search.png';
  static const String emptyWatchlistIllustration = '$_images/empty_watchlist.png';
  static const String noInternetIllustration = '$_images/no_internet.png';
  static const String errorIllustration = '$_images/error_state.png';

  // Icons.
  static const String icPlay = '$_icons/ic_play.svg';
  static const String icStar = '$_icons/ic_star.svg';

  const AssetPaths._();
}
