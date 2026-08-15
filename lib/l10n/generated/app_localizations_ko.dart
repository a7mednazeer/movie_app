// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTagline => '당신만의 영화 세계';

  @override
  String get navHome => '홈';

  @override
  String get navSearch => '검색';

  @override
  String get navBrowse => '둘러보기';

  @override
  String get navWatchlist => '보관함';

  @override
  String get navProfile => '프로필';

  @override
  String get sectionTrending => '지금 뜨는 콘텐츠';

  @override
  String get sectionPopular => '인기 영화';

  @override
  String get sectionTopRated => '높은 평점';

  @override
  String get sectionUpcoming => '개봉 예정';

  @override
  String get sectionRecommended => '추천 콘텐츠';

  @override
  String get sectionCategories => '카테고리';

  @override
  String get seeAll => '모두 보기';

  @override
  String get moreLikeThis => '비슷한 콘텐츠';

  @override
  String get cast => '출연진';

  @override
  String get reviews => '리뷰';

  @override
  String get noReviewsYet => '아직 리뷰가 없습니다. 첫 번째 리뷰를 남겨보세요.';

  @override
  String get overview => '개요';

  @override
  String get watchTrailer => '예고편 보기';

  @override
  String get noTrailerAvailable => '이 콘텐츠의 예고편이 아직 없습니다.';

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
  String get readLess => '줄이기';

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
      '최근 검색어를 모두 삭제하시겠습니까? 삭제 후 복구할 수 없습니다.';

  @override
  String get noResultsFound => '검색 결과 없음';

  @override
  String get noResultsSubtitle => '다른 제목, 배우 또는 장르로 검색해보세요.';

  @override
  String get startSearching => '좋아하는 영화를 검색해보세요';

  @override
  String get startSearchingSubtitle => '제목을 찾고, 출연진을 둘러보고, 새로운 콘텐츠를 발견하세요.';

  @override
  String get browseCategory => '카테고리 둘러보기';

  @override
  String get noCategoriesAvailable => '이용 가능한 카테고리 없음';

  @override
  String get checkBackLaterGenres => '나중에 다시 확인해주세요.';

  @override
  String get noMoviesInGenre => '아직 콘텐츠가 없습니다';

  @override
  String get checkBackSoonGenre => '이 장르에 현재 콘텐츠가 없습니다. 나중에 다시 확인해주세요.';

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
  String get watchlistEmptySubtitle => '영화를 저장하면 여기에 표시되어 언제든 다시 찾을 수 있습니다.';

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
  String get favoritesEmptyTitle => '즐겨찾기한 콘텐츠 없음';

  @override
  String get favoritesEmptySubtitle => '영화 상세 페이지에서 즐겨찾기로 표시한 영화가 여기에 나타납니다.';

  @override
  String removedFromFavoritesSnack(String title) {
    return '즐겨찾기에서 \"$title\" 삭제됨';
  }

  @override
  String get undo => '실행 취소';

  @override
  String get retry => '재시도';

  @override
  String get genericErrorSubtitle => '콘텐츠를 불러오는 중 문제가 발생했습니다. 다시 시도해주세요.';

  @override
  String get noInternetSubtitle => '연결 상태를 확인하고 다시 시도해주세요.';

  @override
  String get profileTitle => '프로필';

  @override
  String get yourLibrary => '라이브러리';

  @override
  String get everythingSaved => '저장한 모든 콘텐츠를 한곳에서';

  @override
  String get favoritesLabel => '즐겨찾기';

  @override
  String get watchlistLabel => '보관함';

  @override
  String get settingsLabel => '설정';

  @override
  String get settingsSubtitle => '테마, 언어 및 정보';

  @override
  String get settingsTitle => '설정';

  @override
  String get appearance => '화면 설정';

  @override
  String get preferences => '환경 설정';

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
      '프리미엄 영화 탐색 앱 — 트렌드, 인기, 높은 평점의 콘텐츠를 둘러보고 검색하며, 보고 싶은 영화를 관리하세요.';

  @override
  String get tmdbAttribution =>
      '이 제품은 TMDB API를 사용하지만 TMDB에서 보증하거나 인증하지는 않습니다.';

  @override
  String get visitTmdb => 'TMDB 방문';

  @override
  String get close => '닫기';

  @override
  String get comingSoon => '준비 중';

  @override
  String get themeLight => '라이트 모드';

  @override
  String get themeDark => '다크 모드';

  @override
  String get themeAuto => '시스템 설정';

  @override
  String get cancel => '취소';

  @override
  String get confirm => '확인';

  @override
  String get removeLabel => '삭제';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — 예고편 확인: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Movies에서 \"$title\"를 확인해보세요!';
  }

  @override
  String get notificationsLabel => '알림';

  @override
  String get notificationsSubtitle => '알림 설정 관리';

  @override
  String get helpCenterLabel => '고객 센터';

  @override
  String get helpCenterSubtitle => 'FAQ, 문의하기 등';

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
  String get enterName => '이름을 입력하세요';

  @override
  String get profileUpdated => '프로필이 성공적으로 업데이트되었습니다';

  @override
  String get signIn => '로그인';

  @override
  String get signUp => '회원가입';

  @override
  String get welcomeBack => '다시 만나서 반가워요';

  @override
  String get signInSubtitle => '로그인하여 여러 기기에서 보관함과 즐겨찾기를 동기화하세요.';

  @override
  String get createAccount => '계정 만들기';

  @override
  String get signUpSubtitle => '회원가입하여 보관함과 즐겨찾기를 계정에 저장하세요.';

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
  String get authErrorFieldRequired => '필수 입력 항목입니다.';

  @override
  String get authErrorInvalidEmail => '올바른 이메일 주소를 입력하세요.';

  @override
  String get authErrorUserDisabled => '이 계정은 사용이 중지되었습니다.';

  @override
  String get authErrorUserNotFound => '해당 이메일로 등록된 계정이 없습니다.';

  @override
  String get authErrorWrongPassword => '이메일 또는 비밀번호가 잘못되었습니다.';

  @override
  String get authErrorEmailInUse => '이미 사용 중인 이메일입니다.';

  @override
  String get authErrorWeakPassword => '비밀번호가 너무 취약합니다.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return '비밀번호는 최소 $minLength자 이상이어야 합니다.';
  }

  @override
  String get authErrorTooManyRequests => '시도 횟수가 너무 많습니다. 잠시 후 다시 시도해주세요.';

  @override
  String get authErrorNotConfigured => '이 앱에 로그인 설정이 완료되지 않았습니다.';

  @override
  String get authErrorRequiresRecentLogin => '계속하려면 다시 로그인해주세요.';

  @override
  String get authErrorPasswordMismatch => '비밀번호가 일치하지 않습니다.';

  @override
  String get authEnterEmailFirst => '위에 이메일을 먼저 입력하세요.';

  @override
  String authResetEmailSent(String email) {
    return '$email로 비밀번호 재설정 이메일이 전송되었습니다.';
  }

  @override
  String get authSyncBannerTitle => '동기화를 위해 로그인';

  @override
  String get authSyncBannerSubtitle => '보관함과 즐겨찾기를 계정에 저장하고 모든 기기에서 확인하세요.';

  @override
  String get signOut => '로그아웃';

  @override
  String get signOutConfirmTitle => '로그아웃하시겠습니까?';

  @override
  String get signOutConfirmMessage =>
      '언제든지 다시 로그인할 수 있습니다. 보관함과 즐겨찾기는 계정에 안전하게 저장됩니다.';

  @override
  String get signedOutSnack => '로그아웃됨';

  @override
  String get guestBadge => '게스트';

  @override
  String get syncedToAccount => '계정에 동기화됨';

  @override
  String get localOnlyBanner => '이 기기에만 저장됨 — 동기화하려면 로그인하세요';

  @override
  String get editProfile => '프로필 수정';

  @override
  String get photoUrlLabel => '사진 URL';

  @override
  String get photoUrlFieldHint => 'https://example.com/photo.jpg';

  @override
  String get photoUrlHint => '이미지 링크를 붙여넣으세요. 사진을 삭제하려면 비워두세요.';

  @override
  String get invalidUrlError => 'http:// 또는 https://로 시작하는 올바른 이미지 URL을 입력하세요.';

  @override
  String get saveChanges => '변경사항 저장';

  @override
  String get profileUpdatedSnack => '프로필 업데이트됨';

  @override
  String get deleteAccountAction => '계정 삭제';

  @override
  String get deleteAccountConfirmTitle => '계정을 삭제하시겠습니까?';

  @override
  String get deleteAccountConfirmMessage =>
      '계정과 로그인 정보가 영구적으로 삭제됩니다. 보관함과 즐겨찾기는 이 기기에 남지만 더 이상 동기화되지 않습니다. 삭제 후 복구할 수 없습니다.';

  @override
  String get accountDeletedSnack => '계정 삭제됨';

  @override
  String get chatbotEntrySubtitle => 'FAQ 어시스턴트에게 빠른 답변 받기';

  @override
  String get faqEntrySubtitle => '자주 묻는 질문과 답변 둘러보기';

  @override
  String get contactUsEntrySubtitle => '메시지 보내기';

  @override
  String get feedbackEntrySubtitle => '앱 평가 및 의견 보내기';

  @override
  String get aboutEntrySubtitle => '버전, 크레딧 및 법적 정보';

  @override
  String get chatbotTitle => '도움말 어시스턴트';

  @override
  String get chatbotGreeting => '안녕하세요! 앱 사용에 대해 궁금한 점을 물어보세요. 최선을 다해 도와드릴게요.';

  @override
  String get chatbotInputHint => '질문을 입력하세요…';

  @override
  String get chatbotNoMatch => '죄송합니다, 잘 모르겠어요. 질문을 다르게 입력하거나 FAQ를 확인해보세요.';

  @override
  String get chatbotContactHumanPrompt => '직접 문의가 필요하신가요? 문의하기';

  @override
  String get faqTitle => '자주 묻는 질문 (FAQ)';

  @override
  String get faqSearchHint => 'FAQ 검색…';

  @override
  String get faqNoResultsSubtitle => '다른 검색어를 입력하거나 챗봇에게 물어보세요.';

  @override
  String get faqQAboutApp => '이 앱은 무엇인가요?';

  @override
  String get faqAAboutApp =>
      'MOVIES는 영화 탐색 앱입니다. 트렌드, 인기, 높은 평점의 영화를 둘러보고, 검색하고, 보고 싶은 영화를 관리할 수 있습니다.';

  @override
  String get faqQSearch => '영화는 어떻게 검색하나요?';

  @override
  String get faqASearch =>
      '하단 메뉴에서 검색을 누른 뒤 제목, 배우 또는 장르를 입력하세요. 입력 즉시 결과가 업데이트됩니다.';

  @override
  String get faqQWatchlistVsFavorites => '보관함과 즐겨찾기의 차이점은 무엇인가요?';

  @override
  String get faqAWatchlistVsFavorites =>
      '보관함은 보고 싶은 영화를, 즐겨찾기는 이미 좋아하는 영화를 위한 공간입니다. 각각 별도로 관리됩니다.';

  @override
  String get faqQSaveMovie => '영화는 어떻게 저장하나요?';

  @override
  String get faqASaveMovie =>
      '영화 카드의 북마크 아이콘을 누르거나 상세 페이지의 보관함/즐겨찾기 버튼을 사용하세요.';

  @override
  String get faqQNeedAccount => '앱을 사용하려면 계정이 꼭 필요한가요?';

  @override
  String get faqANeedAccount =>
      '아니요, 로그인 없이 게스트로도 모든 기능을 사용할 수 있습니다. 단, 기기 간 동기화를 위해서는 로그인이 필요합니다.';

  @override
  String get faqQSignIn => '로그인이나 회원가입은 어떻게 하나요?';

  @override
  String get faqASignIn => '프로필에서 로그인 배너를 누르세요. 이름, 이메일, 비밀번호만으로 가입할 수 있습니다.';

  @override
  String get faqQSyncDevices => '기기 간 동기화는 어떻게 작동하나요?';

  @override
  String get faqASyncDevices =>
      '로그인하면 보관함과 즐겨찾기가 자동으로 계정에 동기화되며 다른 기기에서도 실시간으로 업데이트됩니다.';

  @override
  String get faqQOffline => '오프라인에서도 작동하나요?';

  @override
  String get faqAOffline =>
      '보관함과 즐겨찾기는 기기에 저장되므로 오프라인에서도 확인할 수 있습니다. 새로운 영화 탐색에는 인터넷이 필요합니다.';

  @override
  String get faqQChangeLanguage => '앱 언어는 어떻게 바꾸나요?';

  @override
  String get faqAChangeLanguage =>
      '설정 → 언어에서 12가지 지원 언어 중 선택하거나 시스템 기본값을 선택하세요.';

  @override
  String get faqQChangeTheme => '라이트/다크 모드는 어떻게 바꾸나요?';

  @override
  String get faqAChangeTheme => '설정 → 화면 설정에서 라이트, 다크 또는 자동(시스템 설정)을 선택하세요.';

  @override
  String get faqQWatchTrailer => '예고편은 어떻게 보나요?';

  @override
  String get faqAWatchTrailer => '영화 상세 페이지에서 예고편 보기를 누르세요. 가능한 경우 유튜브로 연결됩니다.';

  @override
  String get faqQDeleteAccount => '계정 삭제는 어떻게 하나요?';

  @override
  String get faqADeleteAccount =>
      '프로필 → 프로필 수정 하단의 계정 삭제를 누르세요. 삭제 시 계정 정보가 영구 제거됩니다.';

  @override
  String get faqQContactSupport => '고객 지원팀에 어떻게 문의하나요?';

  @override
  String get faqAContactSupport =>
      '고객 센터 → 문의하기를 통해 메시지를 보내세요. 이메일 앱이 자동으로 실행됩니다.';

  @override
  String get contactUsTitle => '문의하기';

  @override
  String get contactUsSubtitle => '궁금한 점이나 문제가 있으신가요? 메시지를 보내주시면 답변해 드리겠습니다.';

  @override
  String get contactSubjectLabel => '제목';

  @override
  String get contactMessageLabel => '내용';

  @override
  String get contactSendAction => '메시지 보내기';

  @override
  String get contactMailAppUnavailable => '이 기기에서 이메일 앱을 찾을 수 없습니다.';

  @override
  String contactEmailBodyTemplate(String name, String email, String message) {
    return '이름: $name\n이메일: $email\n\n내용: $message';
  }

  @override
  String get feedbackTitle => '의견 보내기';

  @override
  String get feedbackSubtitle => '앱 사용 경험이 어떠셨나요?';

  @override
  String get feedbackCommentHint => '더 자세한 의견을 남겨주세요 (선택 사항)…';

  @override
  String get feedbackSendAction => '의견 보내기';

  @override
  String get feedbackRatingRequired => '먼저 별점을 선택해주세요.';

  @override
  String get feedbackThanks => '소중한 의견 감사합니다!';

  @override
  String get feedbackNoComment => '(작성된 의견 없음)';

  @override
  String get feedbackEmailSubject => '앱 관련 의견';

  @override
  String feedbackEmailBodyTemplate(int rating, String comment) {
    return '평점: $rating/5\n\n내용: $comment';
  }

  @override
  String get termsTitle => '서비스 이용약관';

  @override
  String get privacyTitle => '개인정보 처리방침';

  @override
  String get legalLastUpdated => '최종 업데이트: 2026년 1월';

  @override
  String get termsSection1Title => '1. 약관 동의';

  @override
  String get termsSection1Body =>
      '이 앱을 사용함으로써 귀하는 본 이용약관에 동의하게 됩니다. 동의하지 않으시면 앱 사용을 중단해 주세요.';

  @override
  String get termsSection2Title => '2. 서비스 제공';

  @override
  String get termsSection2Body =>
      '본 앱은 TMDB의 정보를 바탕으로 영화 탐색 서비스를 제공합니다. 직접적인 동영상 스트리밍 서비스는 제공하지 않습니다.';

  @override
  String get termsSection3Title => '3. 계정';

  @override
  String get termsSection3Body =>
      '게스트로도 대부분의 기능을 사용할 수 있습니다. 계정 생성 시 기기 간 동기화가 가능하며 비밀번호 보안 책임은 사용자에게 있습니다.';

  @override
  String get termsSection4Title => '4. 사용자 콘텐츠';

  @override
  String get termsSection4Body =>
      '보관함, 즐겨찾기 등의 데이터는 사용자의 소유입니다. 서비스 제공 목적 외에 타인에게 판매하거나 광고용으로 사용하지 않습니다.';

  @override
  String get termsSection5Title => '5. 제3자 데이터';

  @override
  String get termsSection5Body =>
      '영화 정보는 TMDB에서 제공하며 정보가 부정확하거나 예고 없이 변경될 수 있습니다.';

  @override
  String get termsSection6Title => '6. 서비스 종료';

  @override
  String get termsSection6Body =>
      '사용자는 언제든 계정을 삭제할 수 있습니다. 약관 위반 시 서비스 이용이 제한될 수 있습니다.';

  @override
  String get termsSection7Title => '7. 약관 변경';

  @override
  String get termsSection7Body =>
      '본 약관은 변경될 수 있으며 변경 후 앱을 계속 사용하는 것은 개정된 약관에 동의하는 것으로 간주됩니다.';

  @override
  String get privacySection1Title => '1. 수집 항목';

  @override
  String get privacySection1Body =>
      '게스트 이용 시 개인정보를 수집하지 않습니다. 계정 생성 시 이름, 이메일, 프로필 사진 URL(선택)을 수집합니다.';

  @override
  String get privacySection2Title => '2. 데이터 보관';

  @override
  String get privacySection2Body =>
      '로그인 시 데이터는 Firestore에 안전하게 보관되며 본인만 접근 가능합니다.';

  @override
  String get privacySection3Title => '3. 제3자 서비스';

  @override
  String get privacySection3Body =>
      '영화 정보는 TMDB, 인증 및 데이터 보관은 Firebase를 사용하며 각 서비스의 방침을 따릅니다.';

  @override
  String get privacySection4Title => '4. 로컬 저장';

  @override
  String get privacySection4Body => '앱의 원활한 오프라인 작동을 위해 일부 데이터를 기기에 로컬로 저장합니다.';

  @override
  String get privacySection5Title => '5. 데이터 삭제';

  @override
  String get privacySection5Body =>
      '계정 삭제 시 클라우드 데이터는 즉시 삭제됩니다. 기기의 로컬 데이터는 앱 삭제나 캐시 삭제 시 제거됩니다.';

  @override
  String get privacySection6Title => '6. 문의';

  @override
  String get privacySection6Body => '방침에 관한 문의는 고객 센터 → 문의하기를 이용해 주세요.';
}
