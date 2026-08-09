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
  String get noReviewsYet => '아직 리뷰가 없습니다 — 첫 번째로 의견을 공유해 보세요.';

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
  String get cancel => '취소';

  @override
  String get confirm => '확인';

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

  @override
  String get back => '뒤로';

  @override
  String get clear => '지우기';

  @override
  String get editInformation => '정보 수정';

  @override
  String get save => '저장';

  @override
  String get displayName => '표시 이름';

  @override
  String get photoUrl => '사진 URL';

  @override
  String get photoUrlHint => 'https://example.com/avatar.jpg';

  @override
  String get enterName => '이름을 입력하세요';

  @override
  String get profileUpdated => '프로필이 성공적으로 업데이트되었습니다';

  @override
  String get signIn => '로그인';

  @override
  String get signUp => '회원가입';

  @override
  String get welcomeBack => '다시 오신 것을 환영합니다';

  @override
  String get signInSubtitle => '기기 간에 보관함과 즐겨찾기를 동기화하려면 로그인하세요.';

  @override
  String get createAccount => '계정 만들기';

  @override
  String get signUpSubtitle => '보관함과 즐겨찾기를 계정에 저장하려면 회원가입하세요.';

  @override
  String get emailLabel => '이메일';

  @override
  String get passwordLabel => '비밀번호';

  @override
  String get confirmPasswordLabel => '비밀번호 확인';

  @override
  String get nameLabel => '이름';

  @override
  String get forgotPassword => '비밀번호를 잊으셨나요?';

  @override
  String get noAccountYet => '계정이 없으신가요? ';

  @override
  String get alreadyHaveAccount => '이미 계정이 있으신가요? ';

  @override
  String get continueAsGuest => '게스트로 계속하기';

  @override
  String get authErrorFieldRequired => '이 항목은 필수입니다.';

  @override
  String get authErrorInvalidEmail => '유효한 이메일 주소를 입력하세요.';

  @override
  String get authErrorUserDisabled => '이 계정은 비활성화되었습니다.';

  @override
  String get authErrorUserNotFound => '해당 이메일의 계정을 찾을 수 없습니다.';

  @override
  String get authErrorWrongPassword => '이메일 또는 비밀번호가 올바르지 않습니다.';

  @override
  String get authErrorEmailInUse => '이미 해당 이메일로 가입된 계정이 있습니다.';

  @override
  String get authErrorWeakPassword => '비밀번호가 너무 약합니다.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return '비밀번호는 최소 $minLength자 이상이어야 합니다.';
  }

  @override
  String get authErrorTooManyRequests => '시도 횟수가 너무 많습니다. 잠시 후 다시 시도해 주세요.';

  @override
  String get authErrorNotConfigured => '이 앱에는 아직 로그인이 설정되지 않았습니다.';

  @override
  String get authErrorRequiresRecentLogin => '계속하려면 다시 로그인해 주세요.';

  @override
  String get authErrorPasswordMismatch => '비밀번호가 일치하지 않습니다.';

  @override
  String get authEnterEmailFirst => '먼저 위에 이메일을 입력하세요.';

  @override
  String authResetEmailSent(String email) {
    return '$email(으)로 비밀번호 재설정 이메일을 보냈습니다.';
  }

  @override
  String get authSyncBannerTitle => '동기화하려면 로그인하세요';

  @override
  String get authSyncBannerSubtitle => '보관함과 즐겨찾기를 계정에 저장하고 모든 기기에서 이용하세요.';

  @override
  String get signOut => '로그아웃';

  @override
  String get signOutConfirmTitle => '로그아웃할까요?';

  @override
  String get signOutConfirmMessage =>
      '언제든지 다시 로그인할 수 있습니다. 보관함과 즐겨찾기는 계정에 계속 저장됩니다.';

  @override
  String get signedOutSnack => '로그아웃되었습니다';

  @override
  String get guestBadge => '게스트';

  @override
  String get syncedToAccount => '계정과 동기화됨';

  @override
  String get localOnlyBanner => '이 기기에만 저장됨 — 기기 간 동기화하려면 로그인하세요';
}
