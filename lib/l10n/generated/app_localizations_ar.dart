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
  String get sectionTrending => 'الرائج الآن';

  @override
  String get sectionPopular => 'الأفلام الشهيرة';

  @override
  String get sectionTopRated => 'الأعلى تقييماً';

  @override
  String get sectionUpcoming => 'قادم قريباً';

  @override
  String get sectionRecommended => 'موصى به لك';

  @override
  String get sectionCategories => 'الفئات';

  @override
  String get seeAll => 'عرض الكل';

  @override
  String get moreLikeThis => 'المزيد مثل هذا';

  @override
  String get cast => 'طاقم العمل';

  @override
  String get reviews => 'المراجعات';

  @override
  String get noReviewsYet => 'لا توجد مراجعات بعد - كن أول من يشاركنا رأيه.';

  @override
  String get overview => 'نبذة';

  @override
  String get watchTrailer => 'مشاهدة الإعلان';

  @override
  String get noTrailerAvailable => 'لا يوجد إعلان متاح لهذا العنوان حالياً.';

  @override
  String get trailerOpenFailed => 'تعذر فتح الإعلان.';

  @override
  String get addToWatchlist => 'قائمة المشاهدة';

  @override
  String get removedFromWatchlist => 'تم الحذف من قائمة المشاهدة';

  @override
  String get addedToWatchlist => 'تم الإضافة إلى قائمة المشاهدة';

  @override
  String get share => 'مشاركة';

  @override
  String get readMore => 'اقرأ المزيد';

  @override
  String get readLess => 'اقرأ أقل';

  @override
  String get searchHint => 'ابحث عن أفلام، ممثلين، فئات...';

  @override
  String get recentSearches => 'عمليات البحث الأخيرة';

  @override
  String get trendingSearches => 'عمليات البحث الرائجة';

  @override
  String get clearAll => 'مسح الكل';

  @override
  String get clearRecentSearchesMessage =>
      'هل تريد إزالة جميع عمليات البحث الأخيرة؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get noResultsFound => 'لم يتم العثور على أفلام';

  @override
  String get noResultsSubtitle => 'جرب عنواناً أو ممثلاً أو فئة مختلفة.';

  @override
  String get startSearching => 'ابحث عن أفلامك المفضلة';

  @override
  String get startSearchingSubtitle =>
      'ابحث عن العناوين، تصفح طاقم العمل، واكتشف شيئاً جديداً.';

  @override
  String get browseCategory => 'تصفح الفئة';

  @override
  String get noCategoriesAvailable => 'لا توجد فئات متاحة';

  @override
  String get checkBackLaterGenres => 'عد لاحقاً لتصفح الفئات.';

  @override
  String get noMoviesInGenre => 'لا توجد أفلام بعد';

  @override
  String get checkBackSoonGenre => 'لا يوجد شيء في هذه الفئة الآن - عد قريباً.';

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
    return 'تم حذف \"$title\"';
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
  String get favoritesEmptySubtitle => 'الأفلام التي تميزها كمفضلة ستظهر هنا.';

  @override
  String removedFromFavoritesSnack(String title) {
    return 'تم حذف \"$title\" من المفضلة';
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
  String get everythingSaved => 'كل ما حفظته في مكان واحد';

  @override
  String get favoritesLabel => 'المفضلة';

  @override
  String get watchlistLabel => 'قائمة المشاهدة';

  @override
  String get settingsLabel => 'الإعدادات';

  @override
  String get settingsSubtitle => 'المظهر، اللغة، وعن التطبيق';

  @override
  String get settingsTitle => 'الإعدادات';

  @override
  String get appearance => 'المظهر';

  @override
  String get preferences => 'التفضيلات';

  @override
  String get languageLabel => 'اللغة';

  @override
  String get aboutSection => 'عن التطبيق';

  @override
  String get aboutThisApp => 'عن هذا التطبيق';

  @override
  String versionLabel(String version) {
    return 'الإصدار $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return 'عن $appName';
  }

  @override
  String get aboutDescription =>
      'تطبيق متميز لاكتشاف الأفلام - تصفح العناوين الرائجة والشهيرة والأعلى تقييماً، وابحث، وتابع ما تريد مشاهدته.';

  @override
  String get tmdbAttribution =>
      'يستخدم هذا المنتج واجهة برمجة تطبيقات TMDB ولكن ليس معتمداً أو مرخصاً من قبل TMDB.';

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
  String get confirm => 'تأكيد';

  @override
  String get cancel => 'إلغاء';

  @override
  String get removeLabel => 'إزالة';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — شاهد الإعلان: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'شاهد \"$title\" على Movies!';
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
}
