// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTagline => 'सिनेमा की आपकी दुनिया';

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
  String get sectionTrending => 'अभी ट्रेंडिंग में';

  @override
  String get sectionPopular => 'लोकप्रिय फ़िल्में';

  @override
  String get sectionTopRated => 'टॉप रेटेड';

  @override
  String get sectionUpcoming => 'आने वाली';

  @override
  String get sectionRecommended => 'आपके लिए सुझाव';

  @override
  String get sectionCategories => 'श्रेणियाँ';

  @override
  String get seeAll => 'सभी देखें';

  @override
  String get moreLikeThis => 'इसके जैसे और';

  @override
  String get cast => 'कलाकार';

  @override
  String get reviews => 'समीक्षाएँ';

  @override
  String get noReviewsYet =>
      'अभी तक कोई समीक्षा नहीं है — अपनी राय साझा करने वाले पहले व्यक्ति बनें।';

  @override
  String get overview => 'सारांश';

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
  String get share => 'साझा करें';

  @override
  String get readMore => 'और पढ़ें';

  @override
  String get readLess => 'कम पढ़ें';

  @override
  String get searchHint => 'फ़िल्में, कलाकार, शैलियाँ खोजें...';

  @override
  String get recentSearches => 'हाल की खोजें';

  @override
  String get trendingSearches => 'ट्रेंडिंग खोजें';

  @override
  String get clearAll => 'सभी मिटाएँ';

  @override
  String get clearRecentSearchesMessage =>
      'अपनी सभी हाल की खोजें हटाएँ? इसे वापस नहीं लिया जा सकता।';

  @override
  String get noResultsFound => 'कोई फ़िल्म नहीं मिली';

  @override
  String get noResultsSubtitle =>
      'किसी अन्य शीर्षक, कलाकार या शैली के साथ प्रयास करें।';

  @override
  String get startSearching => 'अपनी पसंदीदा फ़िल्में खोजें';

  @override
  String get startSearchingSubtitle =>
      'शीर्षक खोजें, कलाकारों को देखें, और कुछ नया खोजें।';

  @override
  String get browseCategory => 'श्रेणी ब्राउज़ करें';

  @override
  String get noCategoriesAvailable => 'कोई श्रेणी उपलब्ध नहीं है';

  @override
  String get checkBackLaterGenres =>
      'ब्राउज़ करने के लिए शैलियों के लिए बाद में देखें।';

  @override
  String get noMoviesInGenre => 'अभी तक कोई फ़िल्म नहीं है';

  @override
  String get checkBackSoonGenre =>
      'अभी इस शैली में कुछ भी नहीं है — जल्द ही वापस देखें।';

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
      'आपके द्वारा सहेजी गई फ़िल्में यहाँ दिखाई देंगी ताकि आप उन्हें कभी न भूलें।';

  @override
  String removedFromWatchlistSnack(String title) {
    return '\"$title\" को हटाया गया';
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
  String get favoritesEmptyTitle => 'अभी तक कोई पसंदीदा नहीं है';

  @override
  String get favoritesEmptySubtitle =>
      'जिन फ़िल्मों को आप पसंदीदा के रूप में मार्क करेंगे, वे यहाँ दिखाई देंगी।';

  @override
  String removedFromFavoritesSnack(String title) {
    return '\"$title\" को पसंदीदा से हटाया गया';
  }

  @override
  String get undo => 'पूर्ववत करें';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get genericErrorSubtitle =>
      'इस सामग्री को लोड करने में हमें समस्या हुई। कृपया पुनः प्रयास करें।';

  @override
  String get noInternetSubtitle =>
      'कृपया अपना कनेक्शन जांचें और पुनः प्रयास करें।';

  @override
  String get profileTitle => 'प्रोफ़ाइल';

  @override
  String get yourLibrary => 'आपकी लाइब्रेरी';

  @override
  String get everythingSaved => 'सब कुछ जो आपने सहेजा है, एक ही जगह पर';

  @override
  String get favoritesLabel => 'पसंदीदा';

  @override
  String get watchlistLabel => 'वॉचलिस्ट';

  @override
  String get settingsLabel => 'सेटिंग्स';

  @override
  String get settingsSubtitle => 'थीम, भाषा और ऐप के बारे में';

  @override
  String get settingsTitle => 'सेटिंग्स';

  @override
  String get appearance => 'दिखावट';

  @override
  String get preferences => 'प्राथमिकताएँ';

  @override
  String get languageLabel => 'भाषा';

  @override
  String get aboutSection => 'जानकारी';

  @override
  String get aboutThisApp => 'इस ऐप के बारे में';

  @override
  String versionLabel(String version) {
    return 'वर्जन $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return '$appName के बारे में';
  }

  @override
  String get aboutDescription =>
      'एक प्रीमियम मूवी डिस्कवरी ऐप — ट्रेंडिंग, लोकप्रिय और टॉप-रेटेड फ़िल्में ब्राउज़ करें, खोजें और ट्रैक रखें कि आप क्या देखना चाहते हैं।';

  @override
  String get tmdbAttribution =>
      'यह उत्पाद TMDB API का उपयोग करता है लेकिन TMDB द्वारा समर्थित या प्रमाणित नहीं है।';

  @override
  String get visitTmdb => 'TMDB पर जाएँ';

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
  String get notificationsLabel => 'नोटिफिकेशन';

  @override
  String get notificationsSubtitle =>
      'प्रबंधित करें कि आपको किस बारे में सूचित किया जाए';

  @override
  String get helpCenterLabel => 'सहायता केंद्र';

  @override
  String get helpCenterSubtitle =>
      'अक्सर पूछे जाने वाले प्रश्न, हमसे संपर्क करें, और बहुत कुछ';

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
  String get photoUrl => 'फ़ोटो URL';

  @override
  String get enterName => 'अपना नाम दर्ज करें';

  @override
  String get profileUpdated => 'प्रोफ़ाइल सफलतापूर्वक अपडेट की गई';

  @override
  String get signIn => 'साइन इन करें';

  @override
  String get signUp => 'साइन अप करें';

  @override
  String get welcomeBack => 'आपका स्वागत है';

  @override
  String get signInSubtitle =>
      'अपने उपकरणों पर अपनी वॉचलिस्ट और पसंदीदा को सिंक करने के लिए साइन इन करें।';

  @override
  String get createAccount => 'खाता बनाएँ';

  @override
  String get signUpSubtitle =>
      'अपनी वॉचलिस्ट और पसंदीदा को अपने खाते में सहेजने के लिए साइन अप करें।';

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
  String get noAccountYet => 'खाता नहीं है? ';

  @override
  String get alreadyHaveAccount => 'पहले से खाता है? ';

  @override
  String get continueAsGuest => 'अतिथि के रूप में जारी रखें';

  @override
  String get authErrorFieldRequired => 'यह क्षेत्र आवश्यक है।';

  @override
  String get authErrorInvalidEmail => 'एक मान्य ईमेल पता दर्ज करें।';

  @override
  String get authErrorUserDisabled => 'यह खाता अक्षम कर दिया गया है।';

  @override
  String get authErrorUserNotFound => 'उस ईमेल के साथ कोई खाता नहीं मिला।';

  @override
  String get authErrorWrongPassword => 'गलत ईमेल या पासवर्ड।';

  @override
  String get authErrorEmailInUse =>
      'उस ईमेल के साथ पहले से ही एक खाता मौजूद है।';

  @override
  String get authErrorWeakPassword => 'वह पासवर्ड बहुत कमजोर है।';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'पासवर्ड कम से कम $minLength अक्षरों का होना चाहिए।';
  }

  @override
  String get authErrorTooManyRequests =>
      'बहुत सारे प्रयास। कृपया थोड़ी देर प्रतीक्षा करें और पुनः प्रयास करें।';

  @override
  String get authErrorNotConfigured =>
      'इस ऐप के लिए अभी तक साइन-इन सेट नहीं किया गया है।';

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
      'अपनी वॉचलिस्ट और पसंदीदा को अपने खाते में सहेजें और उन्हें किसी भी डिवाइस पर एक्सेस करें।';

  @override
  String get signOut => 'साइन आउट';

  @override
  String get signOutConfirmTitle => 'साइन आउट करें?';

  @override
  String get signOutConfirmMessage =>
      'आप किसी भी समय वापस साइन इन कर सकते हैं। आपकी वॉचलिस्ट और पसंदीदा आपके खाते में सहेजे रहेंगे।';

  @override
  String get signedOutSnack => 'साइन आउट किया गया';

  @override
  String get guestBadge => 'अतिथि';

  @override
  String get syncedToAccount => 'आपके खाते के साथ सिंक किया गया';

  @override
  String get localOnlyBanner =>
      'केवल इस डिवाइस पर सहेजा गया — उपकरणों में सिंक करने के लिए साइन इन करें';

  @override
  String get editProfile => 'प्रोफ़ाइल संपादित करें';

  @override
  String get photoUrlLabel => 'फ़ोटो URL';

  @override
  String get photoUrlFieldHint => 'https://example.com/photo.jpg';

  @override
  String get photoUrlHint =>
      'किसी छवि का लिंक पेस्ट करें। अपनी फ़ोटो हटाने के लिए खाली छोड़ दें।';

  @override
  String get invalidUrlError =>
      'http:// या https:// से शुरू होने वाला एक मान्य छवि URL दर्ज करें।';

  @override
  String get saveChanges => 'परिवर्तन सहेजें';

  @override
  String get profileUpdatedSnack => 'प्रोफ़ाइल अपडेट की गई';

  @override
  String get deleteAccountAction => 'खाता हटाएँ';

  @override
  String get deleteAccountConfirmTitle => 'अपना खाता हटाएँ?';

  @override
  String get deleteAccountConfirmMessage =>
      'यह आपके खाते और साइन-इन को स्थायी रूप से हटा देता है। आपकी वॉचलिस्ट और पसंदीदा इस डिवाइस पर रहेंगे लेकिन अब कहीं भी सिंक नहीं होंगे। इसे वापस नहीं लिया जा सकता।';

  @override
  String get accountDeletedSnack => 'खाता हटाया गया';

  @override
  String get chatbotEntrySubtitle =>
      'हमारे FAQ सहायक से त्वरित उत्तर प्राप्त करें';

  @override
  String get faqEntrySubtitle => 'सामान्य प्रश्न और उत्तर ब्राउज़ करें';

  @override
  String get contactUsEntrySubtitle => 'हमें एक संदेश भेजें';

  @override
  String get feedbackEntrySubtitle =>
      'ऐप को रेट करें और हमें बताएं कि आप क्या सोचते हैं';

  @override
  String get aboutEntrySubtitle => 'वर्जन, क्रेडिट और कानूनी';

  @override
  String get chatbotTitle => 'सहायता सहायक';

  @override
  String get chatbotGreeting =>
      'नमस्ते! ऐप का उपयोग करने के बारे में मुझसे कुछ भी पूछें — मैं मदद करने की पूरी कोशिश करूँगा।';

  @override
  String get chatbotInputHint => 'अपना प्रश्न टाइप करें...';

  @override
  String get chatbotNoMatch =>
      'मुझे उस बारे में पक्का नहीं पता। कृपया शब्दों को बदल कर देखें, FAQ ब्राउज़ करें, या हमसे संपर्क करें और एक वास्तविक व्यक्ति आपकी मदद करेगा।';

  @override
  String get chatbotContactHumanPrompt =>
      'किसी वास्तविक व्यक्ति की आवश्यकता है? हमसे संपर्क करें';

  @override
  String get faqTitle => 'अक्सर पूछे जाने वाले प्रश्न';

  @override
  String get faqSearchHint => 'FAQ खोजें...';

  @override
  String get faqNoResultsSubtitle =>
      'किसी अन्य खोज शब्द का प्रयास करें, या हमारे चैट सहायक से पूछें।';

  @override
  String get faqQAboutApp => 'यह ऐप क्या है?';

  @override
  String get faqAAboutApp =>
      'MOVIES एक मूवी डिस्कवरी ऐप है — ट्रेंडिंग, लोकप्रिय और टॉप-रेटेड फ़िल्में ब्राउज़ करें, कुछ भी खोजें, और जो आप देखना चाहते हैं उसका ट्रैक रखें।';

  @override
  String get faqQSearch => 'मैं मूवी कैसे खोजूँ?';

  @override
  String get faqASearch =>
      'नीचे नेविगेशन में खोजें पर टैप करें, फिर एक शीर्षक, कलाकार या शैली टाइप करें। आपके टाइप करते ही परिणाम अपडेट हो जाते हैं।';

  @override
  String get faqQWatchlistVsFavorites =>
      'वॉचलिस्ट और पसंदीदा के बीच क्या अंतर है?';

  @override
  String get faqAWatchlistVsFavorites =>
      'वॉचलिस्ट उन फ़िल्मों के लिए है जिन्हें आप देखने की योजना बना रहे हैं। पसंदीदा उन फ़िल्मों के लिए है जिन्हें आप पहले से ही पसंद करते हैं। उन्हें अलग से ट्रैक किया जाता है।';

  @override
  String get faqQSaveMovie => 'मैं मूवी कैसे सहेजूं?';

  @override
  String get faqASaveMovie =>
      'किसी भी मूवी कार्ड पर बुकमार्क आइकन टैप करें, या मूवी के विवरण पृष्ठ पर वॉचलिस्ट/पसंदीदा बटन का उपयोग करें।';

  @override
  String get faqQNeedAccount =>
      'क्या मुझे ऐप का उपयोग करने के लिए खाते की आवश्यकता है?';

  @override
  String get faqANeedAccount =>
      'नहीं — सब कुछ एक अतिथि के रूप में काम करता है, जो आपके डिवाइस पर स्थानीय रूप से सहेजा जाता है। साइन इन करने से क्रॉस-डिवाइस सिंक जुड़ जाता है।';

  @override
  String get faqQSignIn => 'मैं साइन इन कैसे करूँ या खाता कैसे बनाऊँ?';

  @override
  String get faqASignIn =>
      'प्रोफ़ाइल पर जाएँ और साइन-इन बैनर पर टैप करें। साइन-अप के लिए केवल नाम, ईमेल और पासवर्ड की आवश्यकता होती है।';

  @override
  String get faqQSyncDevices => 'उपकरणों में सिंकिंग कैसे काम करती है?';

  @override
  String get faqASyncDevices =>
      'एक बार साइन इन करने के बाद, आपकी वॉचलिस्ट और पसंदीदा स्वचालित रूप से आपके खाते में सिंक हो जाते हैं और उसी खाते में साइन इन किए गए किसी भी अन्य डिवाइस पर वास्तविक समय में अपडेट हो जाते हैं।';

  @override
  String get faqQOffline => 'क्या ऐप ऑफलाइन काम करता है?';

  @override
  String get faqAOffline =>
      'आपकी वॉचलिस्ट और पसंदीदा हमेशा ऑफलाइन उपलब्ध होते हैं क्योंकि वे आपके डिवाइस पर संग्रहीत होते हैं। नई फ़िल्में ब्राउज़ करने के लिए इंटरनेट कनेक्शन की आवश्यकता होती है।';

  @override
  String get faqQChangeLanguage => 'मैं ऐप की भाषा कैसे बदलूँ?';

  @override
  String get faqAChangeLanguage =>
      'सेटिंग्स → भाषा पर जाएँ और 12 समर्थित भाषाओं में से चुनें, या अपने डिवाइस की भाषा का पालन करने के लिए सिस्टम डिफ़ॉल्ट चुनें।';

  @override
  String get faqQChangeTheme => 'मैं लाइट और डार्क मोड के बीच कैसे स्विच करूँ?';

  @override
  String get faqAChangeTheme =>
      'सेटिंग्स → दिखावट पर जाएँ और अपने डिवाइस की सेटिंग का पालन करने के लिए लाइट, डार्क या ऑटो चुनें।';

  @override
  String get faqQWatchTrailer => 'मैं ट्रेलर कैसे देखूँ?';

  @override
  String get faqAWatchTrailer =>
      'मूवी का विवरण पृष्ठ खोलें और ट्रेलर देखें पर टैप करें। यदि उस शीर्षक के लिए ट्रेलर उपलब्ध है तो यह यूट्यूब में खुलता है।';

  @override
  String get faqQDeleteAccount => 'मैं अपना खाता कैसे हटाऊँ?';

  @override
  String get faqADeleteAccount =>
      'प्रोफ़ाइल → प्रोफ़ाइल संपादित करें पर जाएँ और खाता हटाएँ तक स्क्रॉल करें। यह आपके खाते को स्थायी रूप से हटा देता है।';

  @override
  String get faqQContactSupport => 'मैं सहायता टीम से कैसे संपर्क करूँ?';

  @override
  String get faqAContactSupport =>
      'सहायता केंद्र → हमसे संपर्क करें पर जाएँ और हमें एक संदेश भेजें — यह आपके ईमेल ऐप को पहले से भरी हुई जानकारी के साथ खोलता है।';

  @override
  String get contactUsTitle => 'हमसे संपर्क करें';

  @override
  String get contactUsSubtitle =>
      'कोई प्रश्न है या किसी समस्या का सामना करना पड़ा? हमें एक संदेश भेजें और हम आपसे संपर्क करेंगे।';

  @override
  String get contactSubjectLabel => 'विषय';

  @override
  String get contactMessageLabel => 'संदेश';

  @override
  String get contactSendAction => 'संदेश भेजें';

  @override
  String get contactMailAppUnavailable => 'इस डिवाइस पर कोई ईमेल ऐप नहीं मिला।';

  @override
  String contactEmailBodyTemplate(String name, String email, String message) {
    return 'नाम: $name\nईमेल: $email\n\n$message';
  }

  @override
  String get feedbackTitle => 'प्रतिक्रिया';

  @override
  String get feedbackSubtitle => 'अब तक ऐप के साथ आपका अनुभव कैसा रहा?';

  @override
  String get feedbackCommentHint => 'हमें और बताएं (वैकल्पिक)...';

  @override
  String get feedbackSendAction => 'प्रतिक्रिया भेजें';

  @override
  String get feedbackRatingRequired => 'कृपया पहले स्टार रेटिंग चुनें।';

  @override
  String get feedbackThanks => 'आपकी प्रतिक्रिया के लिए धन्यवाद!';

  @override
  String get feedbackNoComment => '(कोई टिप्पणी नहीं दी गई)';

  @override
  String get feedbackEmailSubject => 'ऐप प्रतिक्रिया';

  @override
  String feedbackEmailBodyTemplate(int rating, String comment) {
    return 'रेटिंग: $rating/5\n\n$comment';
  }

  @override
  String get termsTitle => 'सेवा की शर्तें';

  @override
  String get privacyTitle => 'गोपनीयता नीति';

  @override
  String get legalLastUpdated => 'अंतिम अपडेट: जनवरी 2026';

  @override
  String get termsSection1Title => '1. शर्तों की स्वीकृति';

  @override
  String get termsSection1Body =>
      'इस ऐप का उपयोग करके, आप इन सेवा की शर्तों से सहमत होते हैं। यदि आप सहमत नहीं हैं, तो कृपया ऐप का उपयोग न करें।';

  @override
  String get termsSection2Title => '2. सेवा';

  @override
  String get termsSection2Body =>
      'यह ऐप आपको द मूवी डेटाबेस (TMDB) से प्राप्त मूवी जानकारी ब्राउज़ करने, खोजने और सहेजने की सुविधा देता है। हम स्वयं किसी भी वीडियो सामग्री को होस्ट, स्ट्रीम या वितरित नहीं करते हैं।';

  @override
  String get termsSection3Title => '3. खाते';

  @override
  String get termsSection3Body =>
      'आप बिना खाते के अतिथि के रूप में अधिकांश सुविधाओं का उपयोग कर सकते हैं। खाता बनाने से उपकरणों में सिंक सक्षम हो जाता है। आप अपना पासवर्ड सुरक्षित रखने के लिए जिम्मेदार हैं।';

  @override
  String get termsSection4Title => '4. आपकी सामग्री';

  @override
  String get termsSection4Body =>
      'आपकी वॉचलिस्ट, पसंदीदा, प्रोफ़ाइल नाम और फ़ोटो URL आपके हैं। हम उन्हें सेवा प्रदान करने के लिए संग्रहीत करते हैं और उन्हें बेचते नहीं हैं।';

  @override
  String get termsSection5Title => '5. तृतीय-पक्ष डेटा';

  @override
  String get termsSection5Body =>
      'मूवी शीर्षक, पोस्टर, रेटिंग, कलाकार और समीक्षाएं TMDB द्वारा प्रदान की जाती हैं और गलत हो सकती हैं या बिना सूचना के बदल सकती हैं।';

  @override
  String get termsSection6Title => '6. समाप्ति';

  @override
  String get termsSection6Body =>
      'आप प्रोफ़ाइल → प्रोफ़ाइल संपादित करें से किसी भी समय अपना खाता हटा सकते हैं। हम शर्तों का उल्लंघन करने वाले व्यवहार के लिए पहुंच निलंबित कर सकते हैं।';

  @override
  String get termsSection7Title => '7. इन शर्तों में बदलाव';

  @override
  String get termsSection7Body =>
      'हम समय-समय पर इन शर्तों को अपडेट कर सकते हैं। बदलावों के बाद ऐप का उपयोग जारी रखने का अर्थ है कि आप अपडेट की गई शर्तों को स्वीकार करते हैं।';

  @override
  String get privacySection1Title => '1. हम क्या एकत्र करते हैं';

  @override
  String get privacySection1Body =>
      'यदि आप अतिथि के रूप में ऐप का उपयोग करते हैं, तो हम कोई व्यक्तिगत डेटा एकत्र नहीं करते हैं। यदि आप खाता बनाते हैं, तो हम आपका नाम, ईमेल और वैकल्पिक फ़ोटो URL एकत्र करते हैं।';

  @override
  String get privacySection2Title => '2. वॉचलिस्ट और पसंदीदा डेटा';

  @override
  String get privacySection2Body =>
      'साइन इन होने पर, आपकी सहेजी गई फ़िल्में आपके खाते के अंतर्गत Firestore में संग्रहीत की जाती हैं और आपके उपकरणों में सिंक की जाती हैं।';

  @override
  String get privacySection3Title => '3. तृतीय-पक्ष सेवाएँ';

  @override
  String get privacySection3Body =>
      'हम मूवी जानकारी के लिए TMDB और प्रमाणीकरण और डेटा संग्रहण के लिए Firebase का उपयोग करते हैं। उनकी अपनी गोपनीयता नीतियां हैं।';

  @override
  String get privacySection4Title => '4. स्थानीय संग्रहण';

  @override
  String get privacySection4Body =>
      'आपकी प्राथमिकताएँ आपके डिवाइस पर स्थानीय रूप से (Hive के माध्यम से) संग्रहीत की जाती हैं ताकि ऐप ऑफलाइन काम करे।';

  @override
  String get privacySection5Title => '5. डेटा हटाना';

  @override
  String get privacySection5Body =>
      'आप किसी भी समय अपना खाता हटा सकते हैं, जो आपके खाते को स्थायी रूप से हटा देता है और सिंकिंग बंद कर देता है।';

  @override
  String get privacySection6Title => '6. संपर्क';

  @override
  String get privacySection6Body =>
      'इस नीति के बारे में प्रश्न? सहायता केंद्र → हमसे संपर्क करें के माध्यम से हमसे संपर्क करें।';
}
