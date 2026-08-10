// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTagline => 'आपकी सिनेमा की दुनिया';

  @override
  String get navHome => 'होम';

  @override
  String get navSearch => 'खोजें';

  @override
  String get navBrowse => 'ब्राउज़ करें';

  @override
  String get navWatchlist => 'वॉचलिस्ट';

  @override
  String get navProfile => 'प्रोफ़ाइल';

  @override
  String get sectionTrending => 'अभी ट्रेंडिंग';

  @override
  String get sectionPopular => 'लोकप्रिय फ़िल्में';

  @override
  String get sectionTopRated => 'सर्वश्रेष्ठ रेटेड';

  @override
  String get sectionUpcoming => 'जल्द आ रही हैं';

  @override
  String get sectionRecommended => 'आपके लिए अनुशंसित';

  @override
  String get sectionCategories => 'श्रेणियाँ';

  @override
  String get seeAll => 'सभी देखें';

  @override
  String get moreLikeThis => 'इससे मिलती-जुलती फ़िल्में';

  @override
  String get cast => 'कलाकार';

  @override
  String get reviews => 'समीक्षाएं';

  @override
  String get noReviewsYet =>
      'अभी तक कोई समीक्षा नहीं है — अपनी राय साझा करने वाले पहले व्यक्ति बनें।';

  @override
  String get overview => 'कहानी';

  @override
  String get watchTrailer => 'ट्रेलर देखें';

  @override
  String get noTrailerAvailable =>
      'इस फ़िल्म के लिए अभी कोई ट्रेलर उपलब्ध नहीं है।';

  @override
  String get trailerOpenFailed => 'ट्रेलर नहीं खोला जा सका।';

  @override
  String get addToWatchlist => 'वॉचलिस्ट';

  @override
  String get removedFromWatchlist => 'वॉचलिस्ट से हटाया गया';

  @override
  String get addedToWatchlist => 'वॉचलिस्ट में जोड़ा गया';

  @override
  String get share => 'शेयर करें';

  @override
  String get readMore => 'और पढ़ें';

  @override
  String get readLess => 'कम दिखाएं';

  @override
  String get searchHint => 'फ़िल्में, कलाकार, शैलियाँ खोजें…';

  @override
  String get recentSearches => 'हाल की खोजें';

  @override
  String get trendingSearches => 'ट्रेंडिंग खोजें';

  @override
  String get clearAll => 'सभी साफ़ करें';

  @override
  String get clearRecentSearchesMessage =>
      'अपनी सभी हाल की खोजें हटाएं? इसे पूर्ववत नहीं किया जा सकता।';

  @override
  String get noResultsFound => 'कोई फ़िल्म नहीं मिली';

  @override
  String get noResultsSubtitle => 'कोई अलग टाइटल, कलाकार या शैली आज़माएं।';

  @override
  String get startSearching => 'अपनी पसंदीदा फ़िल्में खोजें';

  @override
  String get startSearchingSubtitle =>
      'टाइटल खोजें, कलाकारों को देखें और कुछ नया खोजें।';

  @override
  String get browseCategory => 'श्रेणियाँ ब्राउज़ करें';

  @override
  String get noCategoriesAvailable => 'कोई श्रेणी उपलब्ध नहीं है';

  @override
  String get checkBackLaterGenres => 'उपलब्ध शैलियों के लिए बाद में देखें।';

  @override
  String get noMoviesInGenre => 'अभी तक कोई फ़िल्म नहीं';

  @override
  String get checkBackSoonGenre =>
      'अभी इस शैली में कुछ नहीं है — जल्द ही फिर देखें।';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'मेरी वॉचलिस्ट ($count)',
      zero: 'मेरी वॉचलिस्ट',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'आपकी वॉचलिस्ट खाली है';

  @override
  String get watchlistEmptySubtitle =>
      'आपकी सेव की गई फ़िल्में यहाँ दिखेंगी, ताकि आप उन्हें कभी न भूलें।';

  @override
  String removedFromWatchlistSnack(String title) {
    return '\"$title\" हटाई गई';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'पसंदीदा ($count)',
      zero: 'पसंदीदा',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'अभी तक कोई पसंदीदा नहीं';

  @override
  String get favoritesEmptySubtitle =>
      'फ़िल्म विवरण से पसंदीदा के रूप में चिह्नित फ़िल्में यहाँ दिखेंगी।';

  @override
  String removedFromFavoritesSnack(String title) {
    return '\"$title\" पसंदीदा से हटाई गई';
  }

  @override
  String get undo => 'पूर्ववत करें';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get genericErrorSubtitle =>
      'यह कॉन्टेंट लोड करने में समस्या हुई। कृपया पुनः प्रयास करें।';

  @override
  String get noInternetSubtitle => 'अपना कनेक्शन जांचें और पुनः प्रयास करें।';

  @override
  String get profileTitle => 'प्रोफ़ाइल';

  @override
  String get yourLibrary => 'आपकी लाइब्रेरी';

  @override
  String get everythingSaved => 'आपका सेव किया सब कुछ, एक ही जगह';

  @override
  String get favoritesLabel => 'पसंदीदा';

  @override
  String get watchlistLabel => 'वॉचलिस्ट';

  @override
  String get settingsLabel => 'सेटिंग्स';

  @override
  String get settingsSubtitle => 'थीम, भाषा और अधिक';

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get appearance => 'दिखावट';

  @override
  String get preferences => 'प्राथमिकताएं';

  @override
  String get languageLabel => 'भाषा';

  @override
  String get aboutSection => 'जानकारी';

  @override
  String get aboutThisApp => 'इस ऐप के बारे में';

  @override
  String versionLabel(String version) {
    return 'वर्शन $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return '$appName के बारे में';
  }

  @override
  String get aboutDescription =>
      'फ़िल्में खोजने के लिए एक प्रीमियम ऐप — ट्रेंडिंग, लोकप्रिय और सर्वश्रेष्ठ रेटेड टाइटल देखें, खोजें, और जो देखना चाहते हैं उसका ट्रैक रखें।';

  @override
  String get tmdbAttribution =>
      'यह उत्पाद TMDB API का उपयोग करता है, लेकिन यह TMDB द्वारा समर्थित या प्रमाणित नहीं है।';

  @override
  String get visitTmdb => 'TMDB पर जाएं';

  @override
  String get close => 'बंद करें';

  @override
  String get comingSoon => 'जल्द आ रहा है';

  @override
  String get themeLight => 'लाइट';

  @override
  String get themeDark => 'डार्क';

  @override
  String get themeAuto => 'ऑटो';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get confirm => 'पुष्टि करें';

  @override
  String get removeLabel => 'हटाएं';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — ट्रेलर देखें: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Movies पर \"$title\" देखें!';
  }

  @override
  String get notificationsLabel => 'सूचनाएं';

  @override
  String get notificationsSubtitle =>
      'आपको किस बारे में सूचित किया जाए, प्रबंधित करें';

  @override
  String get helpCenterLabel => 'सहायता केंद्र';

  @override
  String get helpCenterSubtitle => 'सामान्य प्रश्न, संपर्क करें और अधिक';

  @override
  String get systemDefault => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get back => 'पीछे';

  @override
  String get clear => 'साफ़ करें';

  @override
  String get editInformation => 'जानकारी संपादित करें';

  @override
  String get save => 'सहेजें';

  @override
  String get displayName => 'प्रदर्शित नाम';

  @override
  String get photoUrl => 'फोटो URL';

  @override
  String get pphotoUrlHint => 'https://example.com/avatar.jpg';

  @override
  String get enterName => 'अपना नाम दर्ज करें';

  @override
  String get profileUpdated => 'प्रोफ़ाइल सफलतापूर्वक अपडेट की गई';

  @override
  String get signIn => 'साइन इन करें';

  @override
  String get signUp => 'साइन अप करें';

  @override
  String get welcomeBack => 'वापसी पर स्वागत है';

  @override
  String get signInSubtitle =>
      'डिवाइसों में अपनी सूची और पसंदीदा सिंक करने के लिए साइन इन करें।';

  @override
  String get createAccount => 'खाता बनाएं';

  @override
  String get signUpSubtitle =>
      'अपनी सूची और पसंदीदा को अपने खाते में सहेजने के लिए साइन अप करें।';

  @override
  String get emailLabel => 'ईमेल';

  @override
  String get passwordLabel => 'पासवर्ड';

  @override
  String get confirmPasswordLabel => 'पासवर्ड की पुष्टि करें';

  @override
  String get nameLabel => 'नाम';

  @override
  String get forgotPassword => 'पासवर्ड भूल गए?';

  @override
  String get noAccountYet => 'अभी तक खाता नहीं है? ';

  @override
  String get alreadyHaveAccount => 'पहले से खाता है? ';

  @override
  String get continueAsGuest => 'अतिथि के रूप में जारी रखें';

  @override
  String get authErrorFieldRequired => 'यह फ़ील्ड आवश्यक है।';

  @override
  String get authErrorInvalidEmail => 'एक मान्य ईमेल पता दर्ज करें।';

  @override
  String get authErrorUserDisabled => 'यह खाता अक्षम कर दिया गया है।';

  @override
  String get authErrorUserNotFound => 'उस ईमेल से कोई खाता नहीं मिला।';

  @override
  String get authErrorWrongPassword => 'गलत ईमेल या पासवर्ड।';

  @override
  String get authErrorEmailInUse => 'उस ईमेल से पहले से एक खाता मौजूद है।';

  @override
  String get authErrorWeakPassword => 'यह पासवर्ड बहुत कमज़ोर है।';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'पासवर्ड कम से कम $minLength अक्षरों का होना चाहिए।';
  }

  @override
  String get authErrorTooManyRequests =>
      'बहुत अधिक प्रयास। कृपया थोड़ी देर बाद पुनः प्रयास करें।';

  @override
  String get authErrorNotConfigured =>
      'इस ऐप के लिए साइन-इन अभी सेट नहीं किया गया है।';

  @override
  String get authErrorRequiresRecentLogin =>
      'जारी रखने के लिए कृपया फिर से साइन इन करें।';

  @override
  String get authErrorPasswordMismatch => 'पासवर्ड मेल नहीं खाते।';

  @override
  String get authEnterEmailFirst => 'पहले ऊपर अपना ईमेल दर्ज करें।';

  @override
  String authResetEmailSent(String email) {
    return 'पासवर्ड रीसेट ईमेल $email पर भेजा गया।';
  }

  @override
  String get authSyncBannerTitle => 'सिंक करने के लिए साइन इन करें';

  @override
  String get authSyncBannerSubtitle =>
      'अपनी सूची और पसंदीदा को अपने खाते में सहेजें और किसी भी डिवाइस से एक्सेस करें।';

  @override
  String get signOut => 'साइन आउट करें';

  @override
  String get signOutConfirmTitle => 'साइन आउट करें?';

  @override
  String get signOutConfirmMessage =>
      'आप कभी भी फिर से साइन इन कर सकते हैं। आपकी सूची और पसंदीदा आपके खाते में सहेजे रहेंगे।';

  @override
  String get signedOutSnack => 'साइन आउट हो गए';

  @override
  String get guestBadge => 'अतिथि';

  @override
  String get syncedToAccount => 'आपके खाते के साथ सिंक हो गया';

  @override
  String get localOnlyBanner =>
      'केवल इस डिवाइस पर सहेजा गया — डिवाइसों में सिंक करने के लिए साइन इन करें';

  @override
  String get editProfile => 'प्रोफ़ाइल संपादित करें';

  @override
  String get photoUrlLabel => 'फ़ोटो URL';

  @override
  String get photoUrlHint =>
      'किसी इमेज का लिंक पेस्ट करें। अपनी फ़ोटो हटाने के लिए खाली छोड़ दें।';

  @override
  String get invalidUrlError =>
      'http:// या https:// से शुरू होने वाला मान्य इमेज URL दर्ज करें।';

  @override
  String get saveChanges => 'परिवर्तन सहेजें';

  @override
  String get profileUpdatedSnack => 'प्रोफ़ाइल अपडेट हो गई';

  @override
  String get deleteAccountAction => 'खाता हटाएं';

  @override
  String get deleteAccountConfirmTitle => 'अपना खाता हटाएं?';

  @override
  String get deleteAccountConfirmMessage =>
      'यह आपके खाते और साइन-इन को स्थायी रूप से हटा देगा। आपकी सूची और पसंदीदा इस डिवाइस पर रहेंगे लेकिन अब कहीं सिंक नहीं होंगे। इसे पूर्ववत नहीं किया जा सकता।';

  @override
  String get accountDeletedSnack => 'खाता हटा दिया गया';
}
