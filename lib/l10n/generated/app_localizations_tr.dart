// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTagline => 'SİNEMA DÜNYAN';

  @override
  String get navHome => 'Ana Sayfa';

  @override
  String get navSearch => 'Ara';

  @override
  String get navBrowse => 'Keşfet';

  @override
  String get navWatchlist => 'Listem';

  @override
  String get navProfile => 'Profil';

  @override
  String get sectionTrending => 'Şu An Trend';

  @override
  String get sectionPopular => 'Popüler Filmler';

  @override
  String get sectionTopRated => 'En Yüksek Puanlılar';

  @override
  String get sectionUpcoming => 'Yakında';

  @override
  String get sectionRecommended => 'Senin İçin Önerilenler';

  @override
  String get sectionCategories => 'Kategoriler';

  @override
  String get seeAll => 'Tümünü Gör';

  @override
  String get moreLikeThis => 'Benzer Filmler';

  @override
  String get cast => 'Oyuncular';

  @override
  String get reviews => 'Yorumlar';

  @override
  String get noReviewsYet =>
      'No reviews yet — be the first to share your thoughts.';

  @override
  String get overview => 'Konu';

  @override
  String get watchTrailer => 'Fragmanı İzle';

  @override
  String get noTrailerAvailable => 'Bu film için henüz fragman yok.';

  @override
  String get trailerOpenFailed => 'Fragman açılamadı.';

  @override
  String get addToWatchlist => 'Listem';

  @override
  String get removedFromWatchlist => 'Listeden kaldırıldı';

  @override
  String get addedToWatchlist => 'Listeye eklendi';

  @override
  String get share => 'Paylaş';

  @override
  String get readMore => 'Devamını oku';

  @override
  String get readLess => 'Daha az göster';

  @override
  String get searchHint => 'Film, oyuncu, tür ara…';

  @override
  String get recentSearches => 'Son Aramalar';

  @override
  String get trendingSearches => 'Trend Aramalar';

  @override
  String get clearAll => 'Tümünü Temizle';

  @override
  String get clearRecentSearchesMessage =>
      'Tüm son aramaların silinsin mi? Bu işlem geri alınamaz.';

  @override
  String get noResultsFound => 'Film bulunamadı';

  @override
  String get noResultsSubtitle => 'Farklı bir başlık, oyuncu veya tür deneyin.';

  @override
  String get startSearching => 'Favori filmlerini ara';

  @override
  String get startSearchingSubtitle =>
      'Başlıkları bul, oyuncu kadrosuna göz at ve yeni şeyler keşfet.';

  @override
  String get browseCategory => 'Kategorilere Göz At';

  @override
  String get noCategoriesAvailable => 'Kategori bulunamadı';

  @override
  String get checkBackLaterGenres =>
      'Türlere göz atmak için daha sonra tekrar kontrol et.';

  @override
  String get noMoviesInGenre => 'Henüz film yok';

  @override
  String get checkBackSoonGenre =>
      'Bu türde şu anda hiçbir şey yok — yakında tekrar bak.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Listem ($count)',
      zero: 'Listem',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'Listen boş';

  @override
  String get watchlistEmptySubtitle =>
      'Kaydettiğin filmler burada görünür, böylece onları asla kaçırmazsın.';

  @override
  String removedFromWatchlistSnack(String title) {
    return '\"$title\" kaldırıldı';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Favoriler ($count)',
      zero: 'Favoriler',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'Henüz favori yok';

  @override
  String get favoritesEmptySubtitle =>
      'Film detaylarından favori olarak işaretlediğin filmler burada görünür.';

  @override
  String removedFromFavoritesSnack(String title) {
    return '\"$title\" favorilerden kaldırıldı';
  }

  @override
  String get undo => 'GERİ AL';

  @override
  String get retry => 'Tekrar Dene';

  @override
  String get genericErrorSubtitle =>
      'İçerik yüklenirken bir sorun oluştu. Lütfen tekrar dene.';

  @override
  String get noInternetSubtitle => 'Bağlantını kontrol edip tekrar dene.';

  @override
  String get profileTitle => 'Profil';

  @override
  String get yourLibrary => 'Kitaplığın';

  @override
  String get everythingSaved => 'Kaydettiğin her şey tek bir yerde';

  @override
  String get favoritesLabel => 'Favoriler';

  @override
  String get watchlistLabel => 'Listem';

  @override
  String get settingsLabel => 'Ayarlar';

  @override
  String get settingsSubtitle => 'Tema, dil ve daha fazlası';

  @override
  String get settingsTitle => 'Ayarlar';

  @override
  String get appearance => 'Görünüm';

  @override
  String get preferences => 'Tercihler';

  @override
  String get languageLabel => 'Dil';

  @override
  String get aboutSection => 'Hakkında';

  @override
  String get aboutThisApp => 'Bu Uygulama Hakkında';

  @override
  String versionLabel(String version) {
    return 'Sürüm $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return '$appName Hakkında';
  }

  @override
  String get aboutDescription =>
      'Film keşfetmek için premium bir uygulama: trend, popüler ve en yüksek puanlı filmlere göz at, ara ve izlemek istediklerini takip et.';

  @override
  String get tmdbAttribution =>
      'Bu ürün TMDB API\'sini kullanır ancak TMDB tarafından onaylanmamış veya sertifikalandırılmamıştır.';

  @override
  String get visitTmdb => 'TMDB\'yi Ziyaret Et';

  @override
  String get close => 'Kapat';

  @override
  String get comingSoon => 'Yakında';

  @override
  String get themeLight => 'Açık';

  @override
  String get themeDark => 'Koyu';

  @override
  String get themeAuto => 'Otomatik';

  @override
  String get confirm => 'Confirm';

  @override
  String get cancel => 'Vazgeç';

  @override
  String get removeLabel => 'Kaldır';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — fragmanı izle: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return '\"$title\" filmine Movies\'te göz at!';
  }

  @override
  String get notificationsLabel => 'Bildirimler';

  @override
  String get notificationsSubtitle => 'Neler hakkında bildirim alacağını yönet';

  @override
  String get helpCenterLabel => 'Yardım Merkezi';

  @override
  String get helpCenterSubtitle => 'SSS, bize ulaşın ve daha fazlası';

  @override
  String get systemDefault => 'Sistem varsayılanı';
}
