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
      'Henüz yorum yok — düşüncelerini paylaşan ilk kişi sen ol.';

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
  String get cancel => 'Vazgeç';

  @override
  String get confirm => 'Onayla';

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

  @override
  String get back => 'Geri';

  @override
  String get clear => 'Temizle';

  @override
  String get editInformation => 'Bilgileri Düzenle';

  @override
  String get save => 'Kaydet';

  @override
  String get displayName => 'Görünen Ad';

  @override
  String get photoUrl => 'Fotoğraf URL\'si';

  @override
  String get pphotoUrlHint => 'https://example.com/avatar.jpg';

  @override
  String get enterName => 'Adınızı girin';

  @override
  String get profileUpdated => 'Profil başarıyla güncellendi';

  @override
  String get signIn => 'Giriş Yap';

  @override
  String get signUp => 'Kaydol';

  @override
  String get welcomeBack => 'Tekrar Hoş Geldin';

  @override
  String get signInSubtitle =>
      'Listeni ve favorilerini cihazlar arasında senkronize etmek için giriş yap.';

  @override
  String get createAccount => 'Hesap Oluştur';

  @override
  String get signUpSubtitle =>
      'Listeni ve favorilerini hesabına kaydetmek için kaydol.';

  @override
  String get emailLabel => 'E-posta';

  @override
  String get passwordLabel => 'Şifre';

  @override
  String get confirmPasswordLabel => 'Şifreyi Onayla';

  @override
  String get nameLabel => 'Ad';

  @override
  String get forgotPassword => 'Şifreni mi unuttun?';

  @override
  String get noAccountYet => 'Hesabın yok mu? ';

  @override
  String get alreadyHaveAccount => 'Zaten hesabın var mı? ';

  @override
  String get continueAsGuest => 'Misafir Olarak Devam Et';

  @override
  String get authErrorFieldRequired => 'Bu alan zorunludur.';

  @override
  String get authErrorInvalidEmail => 'Geçerli bir e-posta adresi girin.';

  @override
  String get authErrorUserDisabled => 'Bu hesap devre dışı bırakıldı.';

  @override
  String get authErrorUserNotFound => 'Bu e-postayla bir hesap bulunamadı.';

  @override
  String get authErrorWrongPassword => 'E-posta veya şifre hatalı.';

  @override
  String get authErrorEmailInUse => 'Bu e-postayla zaten bir hesap var.';

  @override
  String get authErrorWeakPassword => 'Bu şifre çok zayıf.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'Şifre en az $minLength karakter olmalıdır.';
  }

  @override
  String get authErrorTooManyRequests =>
      'Çok fazla deneme yapıldı. Lütfen biraz bekleyip tekrar deneyin.';

  @override
  String get authErrorNotConfigured =>
      'Bu uygulama için giriş henüz yapılandırılmadı.';

  @override
  String get authErrorRequiresRecentLogin =>
      'Devam etmek için lütfen tekrar giriş yapın.';

  @override
  String get authErrorPasswordMismatch => 'Şifreler eşleşmiyor.';

  @override
  String get authEnterEmailFirst => 'Önce yukarıya e-postanı gir.';

  @override
  String authResetEmailSent(String email) {
    return 'Şifre sıfırlama e-postası $email adresine gönderildi.';
  }

  @override
  String get authSyncBannerTitle => 'Senkronize etmek için giriş yap';

  @override
  String get authSyncBannerSubtitle =>
      'Listeni ve favorilerini hesabına kaydet, herhangi bir cihazdan eriş.';

  @override
  String get signOut => 'Çıkış Yap';

  @override
  String get signOutConfirmTitle => 'Çıkış yapılsın mı?';

  @override
  String get signOutConfirmMessage =>
      'İstediğin zaman tekrar giriş yapabilirsin. Listen ve favorilerin hesabında kayıtlı kalır.';

  @override
  String get signedOutSnack => 'Çıkış yapıldı';

  @override
  String get guestBadge => 'Misafir';

  @override
  String get syncedToAccount => 'Hesabınla senkronize edildi';

  @override
  String get localOnlyBanner =>
      'Yalnızca bu cihazda kaydedildi — cihazlar arasında senkronize etmek için giriş yap';

  @override
  String get editProfile => 'Profili Düzenle';

  @override
  String get photoUrlLabel => 'Fotoğraf URL\'si';

  @override
  String get photoUrlHint =>
      'Bir resmin bağlantısını yapıştır. Fotoğrafını kaldırmak için boş bırak.';

  @override
  String get invalidUrlError =>
      'http:// veya https:// ile başlayan geçerli bir resim URL\'si gir.';

  @override
  String get saveChanges => 'Değişiklikleri Kaydet';

  @override
  String get profileUpdatedSnack => 'Profil güncellendi';

  @override
  String get deleteAccountAction => 'Hesabı Sil';

  @override
  String get deleteAccountConfirmTitle => 'Hesabın silinsin mi?';

  @override
  String get deleteAccountConfirmMessage =>
      'Bu, hesabını ve girişini kalıcı olarak siler. Listen ve favorilerin bu cihazda kalır ama artık hiçbir yerle senkronize edilmez. Bu işlem geri alınamaz.';

  @override
  String get accountDeletedSnack => 'Hesap silindi';
}
