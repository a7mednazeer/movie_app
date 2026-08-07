// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTagline => '당신의 영화 세계';

  @override
  String get navHome => '홈';

  @override
  String get navSearch => '검색';

  @override
  String get navBrowse => '탐색';

  @override
  String get navWatchlist => '보관함';

  @override
  String get navProfile => '프로필';

  @override
  String get sectionTrending => '지금 인기';

  @override
  String get sectionPopular => '인기 영화';

  @override
  String get sectionTopRated => '높은 평점';

  @override
  String get sectionUpcoming => '개봉 예정';

  @override
  String get sectionRecommended => '맞춤 추천';

  @override
  String get sectionCategories => '카테고리';

  @override
  String get seeAll => '전체 보기';

  @override
  String get moreLikeThis => '비슷한 영화';

  @override
  String get cast => '출연진';

  @override
  String get reviews => '리뷰';

  @override
  String get noReviewsYet =>
      'No reviews yet — be the first to share your thoughts.';

  @override
  String get overview => '줄거리';

  @override
  String get watchTrailer => '예고편 보기';

  @override
  String get noTrailerAvailable => '아직 이 작품의 예고편이 없습니다.';

  @override
  String get trailerOpenFailed => '예고편을 열 수 없습니다.';

  @override
  String get addToWatchlist => '보관함';

  @override
  String get removedFromWatchlist => '보관함에서 삭제됨';

  @override
  String get addedToWatchlist => '보관함에 추가됨';

  @override
  String get share => '공유';

  @override
  String get readMore => '더 보기';

  @override
  String get readLess => '간략히 보기';

  @override
  String get searchHint => '영화, 배우, 장르 검색…';

  @override
  String get recentSearches => '최근 검색어';

  @override
  String get trendingSearches => '인기 검색어';

  @override
  String get clearAll => '전체 삭제';

  @override
  String get clearRecentSearchesMessage =>
      '최근 검색 기록을 모두 삭제할까요? 이 작업은 되돌릴 수 없습니다.';

  @override
  String get noResultsFound => '영화를 찾을 수 없습니다';

  @override
  String get noResultsSubtitle => '다른 제목, 배우 또는 장르로 시도해 보세요.';

  @override
  String get startSearching => '좋아하는 영화를 검색해 보세요';

  @override
  String get startSearchingSubtitle => '제목을 찾고, 출연진을 살펴보고, 새로운 영화를 발견해 보세요.';

  @override
  String get browseCategory => '카테고리 탐색';

  @override
  String get noCategoriesAvailable => '이용 가능한 카테고리가 없습니다';

  @override
  String get checkBackLaterGenres => '나중에 다시 확인해 주세요.';

  @override
  String get noMoviesInGenre => '아직 영화가 없습니다';

  @override
  String get checkBackSoonGenre => '현재 이 장르에는 영화가 없습니다 — 나중에 다시 확인해 주세요.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '내 보관함 ($count)',
      zero: '내 보관함',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => '보관함이 비어 있습니다';

  @override
  String get watchlistEmptySubtitle => '저장한 영화가 여기에 표시되어 놓치지 않도록 도와드려요.';

  @override
  String removedFromWatchlistSnack(String title) {
    return '\"$title\" 삭제됨';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '즐겨찾기 ($count)',
      zero: '즐겨찾기',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => '아직 즐겨찾기가 없습니다';

  @override
  String get favoritesEmptySubtitle => '영화 상세 페이지에서 즐겨찾기로 표시한 영화가 여기에 표시됩니다.';

  @override
  String removedFromFavoritesSnack(String title) {
    return '\"$title\" 즐겨찾기에서 삭제됨';
  }

  @override
  String get undo => '실행 취소';

  @override
  String get retry => '다시 시도';

  @override
  String get genericErrorSubtitle => '콘텐츠를 불러오는 중 문제가 발생했습니다. 다시 시도해 주세요.';

  @override
  String get noInternetSubtitle => '연결 상태를 확인한 후 다시 시도해 주세요.';

  @override
  String get profileTitle => '프로필';

  @override
  String get yourLibrary => '나의 라이브러리';

  @override
  String get everythingSaved => '저장한 모든 콘텐츠를 한곳에서';

  @override
  String get favoritesLabel => '즐겨찾기';

  @override
  String get watchlistLabel => '보관함';

  @override
  String get settingsLabel => '설정';

  @override
  String get settingsSubtitle => '테마, 언어 등';

  @override
  String get settingsTitle => '설정';

  @override
  String get appearance => '화면';

  @override
  String get preferences => '환경설정';

  @override
  String get languageLabel => '언어';

  @override
  String get aboutSection => '정보';

  @override
  String get aboutThisApp => '앱 정보';

  @override
  String versionLabel(String version) {
    return '버전 $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return '$appName 정보';
  }

  @override
  String get aboutDescription =>
      '영화를 발견하는 프리미엄 앱 — 인기 트렌드, 인기 영화, 높은 평점의 작품을 둘러보고 검색하며 보고 싶은 영화를 관리하세요.';

  @override
  String get tmdbAttribution =>
      '이 제품은 TMDB API를 사용하지만 TMDB의 보증이나 인증을 받지 않았습니다.';

  @override
  String get visitTmdb => 'TMDB 방문하기';

  @override
  String get close => '닫기';

  @override
  String get comingSoon => '출시 예정';

  @override
  String get themeLight => '라이트';

  @override
  String get themeDark => '다크';

  @override
  String get themeAuto => '자동';

  @override
  String get confirm => 'Confirm';

  @override
  String get cancel => '취소';

  @override
  String get removeLabel => '삭제';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — 예고편 보기: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Movies에서 \"$title\"을(를) 확인해 보세요!';
  }

  @override
  String get notificationsLabel => '알림';

  @override
  String get notificationsSubtitle => '알림 받을 항목을 관리하세요';

  @override
  String get helpCenterLabel => '고객센터';

  @override
  String get helpCenterSubtitle => '자주 묻는 질문, 문의하기 등';

  @override
  String get systemDefault => '시스템 기본값';
}
