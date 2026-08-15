// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTagline => 'عالمك السينمائي';

  @override
  String get navHome => 'الرئيسية';

  @override
  String get navSearch => 'البحث';

  @override
  String get navBrowse => 'تصفح';

  @override
  String get navWatchlist => 'قائمة المشاهدة';

  @override
  String get navProfile => 'الملف الشخصي';

  @override
  String get sectionTrending => 'الأكثر تداولاً الآن';

  @override
  String get sectionPopular => 'أفلام شائعة';

  @override
  String get sectionTopRated => 'الأعلى تقييماً';

  @override
  String get sectionUpcoming => 'قريباً';

  @override
  String get sectionRecommended => 'موصى به لك';

  @override
  String get sectionCategories => 'الفئات';

  @override
  String get seeAll => 'مشاهدة الكل';

  @override
  String get moreLikeThis => 'المزيد مثل هذا';

  @override
  String get cast => 'طاقم العمل';

  @override
  String get reviews => 'المراجعات';

  @override
  String get noReviewsYet => 'لا توجد مراجعات بعد - كن أول من يشارك رأيه.';

  @override
  String get overview => 'نظرة عامة';

  @override
  String get watchTrailer => 'مشاهدة الإعلان';

  @override
  String get noTrailerAvailable => 'لا يوجد إعلان متاح لهذا الفيلم بعد.';

  @override
  String get trailerOpenFailed => 'تعذر فتح الإعلان.';

  @override
  String get addToWatchlist => 'قائمة المشاهدة';

  @override
  String get removedFromWatchlist => 'تمت الإزالة من قائمة المشاهدة';

  @override
  String get addedToWatchlist => 'تمت الإضافة إلى قائمة المشاهدة';

  @override
  String get share => 'مشاركة';

  @override
  String get readMore => 'اقرأ المزيد';

  @override
  String get readLess => 'عرض أقل';

  @override
  String get searchHint => 'ابحث عن أفلام، ممثلين، فئات...';

  @override
  String get recentSearches => 'البحث الأخير';

  @override
  String get trendingSearches => 'عمليات البحث الشائعة';

  @override
  String get clearAll => 'مسح الكل';

  @override
  String get clearRecentSearchesMessage =>
      'هل تريد إزالة جميع عمليات البحث الأخيرة؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get noResultsFound => 'لم يتم العثور على أفلام';

  @override
  String get noResultsSubtitle => 'جرّب عنواناً أو ممثلاً أو فئة أخرى.';

  @override
  String get startSearching => 'ابحث عن أفلامك المفضلة';

  @override
  String get startSearchingSubtitle =>
      'ابحث عن العناوين، وتصفح طاقم العمل، واكتشف شيئاً جديداً.';

  @override
  String get browseCategory => 'تصفح الفئة';

  @override
  String get noCategoriesAvailable => 'لا توجد فئات متاحة';

  @override
  String get checkBackLaterGenres => 'تحقق لاحقاً من الفئات المتاحة للتصفح.';

  @override
  String get noMoviesInGenre => 'لا توجد أفلام بعد';

  @override
  String get checkBackSoonGenre =>
      'لا يوجد شيء في هذه الفئة حالياً - تحقق مرة أخرى قريباً.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'قائمة المشاهدة ($count)',
      zero: 'قائمة المشاهدة',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'قائمة المشاهدة فارغة';

  @override
  String get watchlistEmptySubtitle =>
      'الأفلام التي تحفظها ستظهر هنا حتى لا تفقدها أبداً.';

  @override
  String removedFromWatchlistSnack(String title) {
    return 'تمت إزالة \"$title\"';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'المفضلة ($count)',
      zero: 'المفضلة',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'لا توجد مفضلات بعد';

  @override
  String get favoritesEmptySubtitle =>
      'الأفلام التي تميزها كمفضلة من تفاصيل الفيلم ستظهر هنا.';

  @override
  String removedFromFavoritesSnack(String title) {
    return 'تمت إزالة \"$title\" من المفضلة';
  }

  @override
  String get undo => 'تراجع';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get genericErrorSubtitle =>
      'واجهنا مشكلة في تحميل هذا المحتوى. يرجى المحاولة مرة أخرى.';

  @override
  String get noInternetSubtitle => 'يرجى التحقق من اتصالك والمحاولة مرة أخرى.';

  @override
  String get profileTitle => 'الملف الشخصي';

  @override
  String get yourLibrary => 'مكتبتك';

  @override
  String get everythingSaved => 'كل ما حفظته، في مكان واحد';

  @override
  String get favoritesLabel => 'المفضلة';

  @override
  String get watchlistLabel => 'قائمة المشاهدة';

  @override
  String get settingsLabel => 'الإعدادات';

  @override
  String get settingsSubtitle => 'المظهر، اللغة، وحول التطبيق';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get appearance => 'المظهر';

  @override
  String get preferences => 'التفضيلات';

  @override
  String get languageLabel => 'اللغة';

  @override
  String get aboutSection => 'حول';

  @override
  String get aboutThisApp => 'حول هذا التطبيق';

  @override
  String versionLabel(String version) {
    return 'الإصدار $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return 'حول $appName';
  }

  @override
  String get aboutDescription =>
      'تطبيق متميز لاكتشاف الأفلام - تصفح العناوين الرائجة والشائعة والأعلى تقييماً، وابحث عنها، وتابع ما تريد مشاهدته.';

  @override
  String get tmdbAttribution =>
      'هذا المنتج يستخدم واجهة برمجة تطبيقات TMDB ولكنه غير معتمد أو مرخص من قبل TMDB.';

  @override
  String get visitTmdb => 'زيارة TMDB';

  @override
  String get close => 'إغلاق';

  @override
  String get comingSoon => 'قريباً';

  @override
  String get themeLight => 'فاتح';

  @override
  String get themeDark => 'داكن';

  @override
  String get themeAuto => 'تلقائي';

  @override
  String get cancel => 'إلغاء';

  @override
  String get confirm => 'تأكيد';

  @override
  String get removeLabel => 'إزالة';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — شاهد الإعلان: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'شاهد \"$title\" على الأفلام!';
  }

  @override
  String get notificationsLabel => 'الإشعارات';

  @override
  String get notificationsSubtitle => 'إدارة ما تتلقى إشعارات بشأنه';

  @override
  String get helpCenterLabel => 'مركز المساعدة';

  @override
  String get helpCenterSubtitle => 'الأسئلة الشائعة، اتصل بنا، والمزيد';

  @override
  String get systemDefault => 'افتراضي النظام';

  @override
  String get back => 'رجوع';

  @override
  String get clear => 'مسح';

  @override
  String get editInformation => 'تعديل المعلومات';

  @override
  String get save => 'حفظ';

  @override
  String get displayName => 'اسم العرض';

  @override
  String get photoUrl => 'رابط الصورة';

  @override
  String get enterName => 'أدخل اسمك';

  @override
  String get profileUpdated => 'تم تحديث الملف الشخصي بنجاح';

  @override
  String get signIn => 'تسجيل الدخول';

  @override
  String get signUp => 'إنشاء حساب';

  @override
  String get welcomeBack => 'مرحباً بعودتك';

  @override
  String get signInSubtitle =>
      'سجل الدخول لمزامنة قائمة المشاهدة والمفضلة عبر أجهزتك.';

  @override
  String get createAccount => 'إنشاء حساب';

  @override
  String get signUpSubtitle =>
      'أنشئ حساباً لحفظ قائمة المشاهدة والمفضلة في حسابك.';

  @override
  String get emailLabel => 'البريد الإلكتروني';

  @override
  String get passwordLabel => 'كلمة المرور';

  @override
  String get confirmPasswordLabel => 'تأكيد كلمة المرور';

  @override
  String get nameLabel => 'الاسم';

  @override
  String get forgotPassword => 'هل نسيت كلمة المرور؟';

  @override
  String get noAccountYet => 'ليس لديك حساب؟ ';

  @override
  String get alreadyHaveAccount => 'لديك حساب بالفعل؟ ';

  @override
  String get continueAsGuest => 'المتابعة كضيف';

  @override
  String get authErrorFieldRequired => 'هذا الحقل مطلوب.';

  @override
  String get authErrorInvalidEmail => 'أدخل عنوان بريد إلكتروني صالح.';

  @override
  String get authErrorUserDisabled => 'تم تعطيل هذا الحساب.';

  @override
  String get authErrorUserNotFound =>
      'لم يتم العثور على حساب بهذا البريد الإلكتروني.';

  @override
  String get authErrorWrongPassword =>
      'البريد الإلكتروني أو كلمة المرور غير صحيحة.';

  @override
  String get authErrorEmailInUse => 'يوجد حساب بالفعل بهذا البريد الإلكتروني.';

  @override
  String get authErrorWeakPassword => 'كلمة المرور ضعيفة جداً.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'يجب أن تتكون كلمة المرور من $minLength أحرف على الأقل.';
  }

  @override
  String get authErrorTooManyRequests =>
      'محاولات كثيرة جداً. يرجى الانتظار لحظة والمحاولة مرة أخرى.';

  @override
  String get authErrorNotConfigured =>
      'لم يتم إعداد تسجيل الدخول لهذا التطبيق بعد.';

  @override
  String get authErrorRequiresRecentLogin =>
      'يرجى تسجيل الدخول مرة أخرى للمتابعة.';

  @override
  String get authErrorPasswordMismatch => 'كلمات المرور غير متطابقة.';

  @override
  String get authEnterEmailFirst => 'أدخل بريدك الإلكتروني أعلاه أولاً.';

  @override
  String authResetEmailSent(String email) {
    return 'تم إرسال بريد إعادة تعيين كلمة المرور إلى $email.';
  }

  @override
  String get authSyncBannerTitle => 'سجل الدخول للمزامنة';

  @override
  String get authSyncBannerSubtitle =>
      'احفظ قائمة المشاهدة والمفضلة في حسابك والوصول إليها من أي جهاز.';

  @override
  String get signOut => 'تسجيل الخروج';

  @override
  String get signOutConfirmTitle => 'تسجيل الخروج؟';

  @override
  String get signOutConfirmMessage =>
      'يمكنك تسجيل الدخول مرة أخرى في أي وقت. تبقى قائمة المشاهدة والمفضلة محفوظة في حسابك.';

  @override
  String get signedOutSnack => 'تم تسجيل الخروج';

  @override
  String get guestBadge => 'ضيف';

  @override
  String get syncedToAccount => 'تمت المزامنة مع حسابك';

  @override
  String get localOnlyBanner =>
      'محفوظ على هذا الجهاز فقط - سجل الدخول للمزامنة عبر الأجهزة';

  @override
  String get editProfile => 'تعديل الملف الشخصي';

  @override
  String get photoUrlLabel => 'رابط الصورة';

  @override
  String get photoUrlFieldHint => 'https://example.com/photo.jpg';

  @override
  String get photoUrlHint => 'الصق رابطاً لصورة. اتركه فارغاً لإزالة صورتك.';

  @override
  String get invalidUrlError =>
      'أدخل رابط صورة صالح يبدأ بـ http:// أو https://.';

  @override
  String get saveChanges => 'حفظ التغييرات';

  @override
  String get profileUpdatedSnack => 'تم تحديث الملف الشخصي';

  @override
  String get deleteAccountAction => 'حذف الحساب';

  @override
  String get deleteAccountConfirmTitle => 'حذف حسابك؟';

  @override
  String get deleteAccountConfirmMessage =>
      'يؤدي هذا إلى حذف حسابك وتسجيل الدخول نهائياً. تبقى قائمة المشاهدة والمفضلة على هذا الجهاز ولكن لن يتم مزامنتها في أي مكان آخر. لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get accountDeletedSnack => 'تم حذف الحساب';

  @override
  String get chatbotEntrySubtitle =>
      'احصل على إجابات سريعة من مساعد الأسئلة الشائعة';

  @override
  String get faqEntrySubtitle => 'تصفح الأسئلة والأجوبة الشائعة';

  @override
  String get contactUsEntrySubtitle => 'أرسل لنا رسالة';

  @override
  String get feedbackEntrySubtitle => 'قيم التطبيق وأخبرنا برأيك';

  @override
  String get aboutEntrySubtitle => 'الإصدار، الاعتمادات، والمسائل القانونية';

  @override
  String get chatbotTitle => 'مساعد المساعدة';

  @override
  String get chatbotGreeting =>
      'مرحباً! اسألني أي شيء عن استخدام التطبيق - سأبذل قصارى جهدي للمساعدة.';

  @override
  String get chatbotInputHint => 'اكتب سؤالك...';

  @override
  String get chatbotNoMatch =>
      'لست متأكداً من ذلك. حاول إعادة الصياغة، أو تصفح الأسئلة الشائعة، أو اتصل بنا وسيقوم شخص حقيقي بمساعدتك.';

  @override
  String get chatbotContactHumanPrompt => 'هل تحتاج إلى شخص حقيقي؟ اتصل بنا';

  @override
  String get faqTitle => 'الأسئلة الشائعة';

  @override
  String get faqSearchHint => 'البحث في الأسئلة الشائعة...';

  @override
  String get faqNoResultsSubtitle =>
      'جرّب مصطلح بحث آخر، أو اسأل مساعد الدردشة الخاص بنا.';

  @override
  String get faqQAboutApp => 'ما هو هذا التطبيق؟';

  @override
  String get faqAAboutApp =>
      'MOVIES هو تطبيق لاكتشاف الأفلام - تصفح العناوين الرائجة والشائعة والأعلى تقييماً، وابحث عن أي شيء، وتابع ما تريد مشاهدته.';

  @override
  String get faqQSearch => 'كيف أبحث عن فيلم؟';

  @override
  String get faqASearch =>
      'اضغط على البحث في التنقل السفلي، ثم اكتب عنواناً أو ممثلاً أو فئة. يتم تحديث النتائج أثناء الكتابة.';

  @override
  String get faqQWatchlistVsFavorites =>
      'ما الفرق بين قائمة المشاهدة والمفضلة؟';

  @override
  String get faqAWatchlistVsFavorites =>
      'قائمة المشاهدة مخصصة للأفلام التي تخطط لمشاهدتها. المفضلة مخصصة للأفلام التي تحبها بالفعل. يتم تتبعهما بشكل منفصل، ويمكن أن يكون الفيلم في كليهما.';

  @override
  String get faqQSaveMovie => 'كيف أحفظ فيلماً؟';

  @override
  String get faqASaveMovie =>
      'اضغط على أيقونة الإشارة المرجعية في أي بطاقة فيلم، أو استخدم أزرار قائمة المشاهدة/المفضلة في صفحة تفاصيل الفيلم.';

  @override
  String get faqQNeedAccount => 'هل أحتاج إلى حساب لاستخدام التطبيق؟';

  @override
  String get faqANeedAccount =>
      'لا - كل شيء يعمل كضيف، ويتم حفظه محلياً على جهازك. يضيف تسجيل الدخول مزامنة عبر الأجهزة، بحيث تتبعك قائمة المشاهدة والمفضلة إلى أي جهاز تسجل الدخول إليه.';

  @override
  String get faqQSignIn => 'كيف يمكنني تسجيل الدخول أو إنشاء حساب؟';

  @override
  String get faqASignIn =>
      'انتقل إلى الملف الشخصي واضغط على لافتة تسجيل الدخول، أو الملف الشخصي ← منطقة حسابك إذا كنت قد قمت بالإعداد بالفعل. يحتاج إنشاء الحساب فقط إلى اسم وبريد إلكتروني وكلمة مرور.';

  @override
  String get faqQSyncDevices => 'كيف تعمل المزامنة عبر الأجهزة؟';

  @override
  String get faqASyncDevices =>
      'بمجرد تسجيل دخولك، تتم مزامنة قائمة المشاهدة والمفضلة تلقائياً مع حسابك وتحديثها في الوقت الفعلي على أي جهاز آخر مسجل دخولك فيه بنفس الحساب.';

  @override
  String get faqQOffline => 'هل يعمل التطبيق بدون اتصال بالإنترنت؟';

  @override
  String get faqAOffline =>
      'قائمة المشاهدة والمفضلة متاحة دائماً بدون اتصال بالإنترنت لأنها مخزنة على جهازك. تصفح الأفلام الجديدة يحتاج إلى اتصال بالإنترنت.';

  @override
  String get faqQChangeLanguage => 'كيف أغير لغة التطبيق؟';

  @override
  String get faqAChangeLanguage =>
      'انتقل إلى الإعدادات ← اللغة واختر من بين 12 لغة مدعومة، أو اختر افتراضي النظام لاتباع لغة جهازك.';

  @override
  String get faqQChangeTheme => 'كيف يمكنني التبديل بين المظهر الفاتح والداكن؟';

  @override
  String get faqAChangeTheme =>
      'انتقل إلى الإعدادات ← المظهر واختر فاتح، أو داكن، أو تلقائي لاتباع إعداد جهازك.';

  @override
  String get faqQWatchTrailer => 'كيف أشاهد إعلاناً؟';

  @override
  String get faqAWatchTrailer =>
      'افتح صفحة تفاصيل الفيلم واضغط على مشاهدة الإعلان. سيفتح في يوتيوب إذا كان هناك إعلان متاح لهذا العنوان.';

  @override
  String get faqQDeleteAccount => 'كيف أحذف حسابي؟';

  @override
  String get faqADeleteAccount =>
      'انتقل إلى الملف الشخصي ← تعديل الملف الشخصي وانتقل لأسفل إلى حذف الحساب. يؤدي هذا إلى إزالة حسابك نهائياً؛ تبقى قائمة المشاهدة والمفضلة على جهازك ولكن تتوقف عن المزامنة.';

  @override
  String get faqQContactSupport => 'كيف أتصل بالدعم؟';

  @override
  String get faqAContactSupport =>
      'انتقل إلى مركز المساعدة ← اتصل بنا وأرسل لنا رسالة - سيفتح تطبيق البريد الإلكتروني الخاص بك مع ملء كل شيء مسبقاً.';

  @override
  String get contactUsTitle => 'اتصل بنا';

  @override
  String get contactUsSubtitle =>
      'لديك سؤال أو واجهت مشكلة؟ أرسل لنا رسالة وسنرد عليك.';

  @override
  String get contactSubjectLabel => 'الموضوع';

  @override
  String get contactMessageLabel => 'الرسالة';

  @override
  String get contactSendAction => 'إرسال الرسالة';

  @override
  String get contactMailAppUnavailable =>
      'لم يتم العثور على تطبيق بريد إلكتروني على هذا الجهاز.';

  @override
  String contactEmailBodyTemplate(String name, String email, String message) {
    return 'الاسم: $name\nالبريد الإلكتروني: $email\n\n$message';
  }

  @override
  String get feedbackTitle => 'الملاحظات';

  @override
  String get feedbackSubtitle => 'كيف هي تجربتك مع التطبيق حتى الآن؟';

  @override
  String get feedbackCommentHint => 'أخبرنا المزيد (اختياري)...';

  @override
  String get feedbackSendAction => 'إرسال الملاحظات';

  @override
  String get feedbackRatingRequired => 'يرجى اختيار تقييم بالنجوم أولاً.';

  @override
  String get feedbackThanks => 'شكراً على ملاحظاتك!';

  @override
  String get feedbackNoComment => '(لم يتم تقديم تعليق)';

  @override
  String get feedbackEmailSubject => 'ملاحظات التطبيق';

  @override
  String feedbackEmailBodyTemplate(int rating, String comment) {
    return 'التقييم: $rating/5\n\n$comment';
  }

  @override
  String get termsTitle => 'شروط الخدمة';

  @override
  String get privacyTitle => 'سياسة الخصوصية';

  @override
  String get legalLastUpdated => 'آخر تحديث: يناير 2026';

  @override
  String get termsSection1Title => '1. قبول الشروط';

  @override
  String get termsSection1Body =>
      'باستخدام هذا التطبيق، فإنك توافق على شروط الخدمة هذه. إذا كنت لا توافق، يرجى عدم استخدام التطبيق.';

  @override
  String get termsSection2Title => '2. الخدمة';

  @override
  String get termsSection2Body =>
      'يتيح لك هذا التطبيق تصفح والبحث وحفظ معلومات الأفلام المستمدة من قاعدة بيانات الأفلام (TMDB). نحن لا نستضيف أو نبث أو نوزع أي محتوى فيديو بأنفسنا.';

  @override
  String get termsSection3Title => '3. الحسابات';

  @override
  String get termsSection3Body =>
      'يمكنك استخدام معظم الميزات كضيف بدون حساب. يتيح إنشاء حساب (البريد الإلكتروني وكلمة المرور، عبر Firebase Authentication) مزامنة قائمة المشاهدة والمفضلة عبر أجهزتك. أنت مسؤول عن الحفاظ على أمان كلمة مرورك.';

  @override
  String get termsSection4Title => '4. المحتوى الخاص بك';

  @override
  String get termsSection4Body =>
      'قائمة المشاهدة والمفضلة واسم الملف الشخصي ورابط الصورة خاصة بك. نحن نخزنها لتقديم الخدمة ولا نبيعها أو نستخدمها للإعلان.';

  @override
  String get termsSection5Title => '5. بيانات الطرف الثالث';

  @override
  String get termsSection5Body =>
      'يتم توفير عناوين الأفلام والملصقات والتقييمات وطاقم العمل والمراجعات من قبل TMDB وقد تكون غير دقيقة أو تتغير دون إشعار. هذا المنتج يستخدم واجهة برمجة تطبيقات TMDB ولكنه غير معتمد أو مرخص من قبل TMDB.';

  @override
  String get termsSection6Title => '6. الإنهاء';

  @override
  String get termsSection6Body =>
      'يمكنك حذف حسابك في أي وقت من الملف الشخصي ← تعديل الملف الشخصي. قد نقوم بتعليق الوصول بسبب سلوك ينتهك هذه الشروط أو يسيء استخدام الخدمة.';

  @override
  String get termsSection7Title => '7. التغييرات على هذه الشروط';

  @override
  String get termsSection7Body =>
      'قد نقوم بتحديث هذه الشروط من وقت لآخر. استمرار استخدام التطبيق بعد التغييرات يعني قبولك للشروط المحدثة.';

  @override
  String get privacySection1Title => '1. ما نجمعه';

  @override
  String get privacySection1Body =>
      'إذا كنت تستخدم التطبيق كضيف، فنحن لا نجمع أي بيانات شخصية - يتم تخزين قائمة المشاهدة والمفضلة فقط على جهازك. إذا أنشأت حساباً، فنحن نجمع اسمك وعنوان بريدك الإلكتروني و(اختيارياً) رابط صورة الملف الشخصي عبر Firebase Authentication.';

  @override
  String get privacySection2Title => '2. بيانات قائمة المشاهدة والمفضلة';

  @override
  String get privacySection2Body =>
      'عند تسجيل الدخول، يتم تخزين أفلامك المحفوظة في Firestore تحت حسابك وتتم مزامنتها عبر أجهزتك. لا يمكن الوصول إلى بيانات كل حساب إلا من خلال ذلك الحساب - مفروض بواسطة قواعد أمان Firestore.';

  @override
  String get privacySection3Title => '3. خدمات الطرف الثالث';

  @override
  String get privacySection3Body =>
      'نحن نستخدم قاعدة بيانات الأفلام (TMDB) لجلب معلومات الأفلام، وFirebase (Google) للمصادقة وتخزين البيانات. هذه الخدمات لديها سياسات خصوصية خاصة بها تحكم كيفية تعاملها مع البيانات من جانبها.';

  @override
  String get privacySection4Title => '4. التخزين المحلي';

  @override
  String get privacySection4Body =>
      'يتم تخزين قائمة المشاهدة والمفضلة والمظهر وتفضيلات اللغة محلياً على جهازك (عبر Hive) بحيث يعمل التطبيق بدون اتصال بالإنترنت وبشكل فوري، سواء كنت قد سجلت الدخول أم لا.';

  @override
  String get privacySection5Title => '5. حذف البيانات';

  @override
  String get privacySection5Body =>
      'يمكنك حذف حسابك في أي وقت من الملف الشخصي ← تعديل الملف الشخصي، مما يؤدي إلى حذف حسابك نهائياً وإيقاف أي مزامنة أخرى. تظل البيانات المخزنة محلياً بالفعل على جهازك حتى تقوم بمسح تخزين التطبيق.';

  @override
  String get privacySection6Title => '6. الاتصال';

  @override
  String get privacySection6Body =>
      'أسئلة حول هذه السياسة؟ تواصل معنا من خلال مركز المساعدة ← اتصل بنا.';
}
