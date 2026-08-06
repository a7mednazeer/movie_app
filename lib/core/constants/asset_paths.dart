/// Centralized asset path constants.
///
/// The four illustrations below are real, original SVG files shipped in
/// this project (`assets/images/*.svg`) — see `core/widgets/app_error_view.dart`
/// for where they're used. Everything else here still simply reserves a
/// location: drop the matching file into `assets/images`, `assets/posters`,
/// or `assets/icons` and the reference resolves automatically with no
/// further code changes.
abstract final class AssetPaths {
  static const String _images = 'assets/images';
  static const String _posters = 'assets/posters';
  static const String _icons = 'assets/icons';

  // Branding. Not shipped as files — the splash/app-bar logo mark is drawn
  // in code (see `AnimatedLogo`) so it renders correctly with zero assets.
  static const String logo = '$_images/logo.png';
  static const String logoMark = '$_images/logo_mark.png';

  // Placeholders / fallbacks. Not shipped as files — poster/backdrop
  // fallbacks are drawn as an icon-in-container (see `_PosterFallback` in
  // `movie_poster_card.dart`) so a missing network image never shows a
  // broken-image glyph.
  static const String moviePlaceholder = '$_images/movie_placeholder.png';
  static const String posterPlaceholder = '$_posters/poster_placeholder.png';
  static const String backdropPlaceholder = '$_images/backdrop_placeholder.png';
  static const String avatarPlaceholder = '$_images/avatar_placeholder.png';

  // Empty / error state illustrations — real, original SVGs.
  static const String searchIllustration = '$_images/search_illustration.svg';
  static const String noResultsIllustration = '$_images/no_results_illustration.svg';
  static const String emptyBookmarkIllustration =
      '$_images/empty_bookmark_illustration.svg';
  static const String connectionErrorIllustration =
      '$_images/connection_error_illustration.svg';

  // Icons. Not shipped as files — the app uses Material Icons everywhere
  // today; these are reserved for a future custom icon set.
  static const String icPlay = '$_icons/ic_play.svg';
  static const String icStar = '$_icons/ic_star.svg';

  const AssetPaths._();
}
