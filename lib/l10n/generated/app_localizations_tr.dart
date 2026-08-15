// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTagline => 'SİNEMA DÜNYANIZ';

  @override
  String get navHome => 'Ana Sayfa';

  @override
  String get navSearch => 'Arama';

  @override
  String get navBrowse => 'Göz At';

  @override
  String get navWatchlist => 'İzleme Listesi';

  @override
  String get navProfile => 'Profil';

  @override
  String get sectionTrending => 'Şu An Trendde';

  @override
  String get sectionPopular => 'Popüler Filmler';

  @override
  String get sectionTopRated => 'En Çok Oylananlar';

  @override
  String get sectionUpcoming => 'Yakında';

  @override
  String get sectionRecommended => 'Sizin İçin Önerilenler';

  @override
  String get sectionCategories => 'Kategoriler';

  @override
  String get seeAll => 'Hepsini Gör';

  @override
  String get moreLikeThis => 'Buna Benzer';

  @override
  String get cast => 'Oyuncular';

  @override
  String get reviews => 'İncelemeler';

  @override
  String get noReviewsYet =>
      'Henüz inceleme yok — düşüncelerinizi paylaşan ilk kişi olun.';

  @override
  String get overview => 'Özet';

  @override
  String get watchTrailer => 'Fragmanı İzle';

  @override
  String get noTrailerAvailable => 'Bu film için henüz fragman mevcut değil.';

  @override
  String get trailerOpenFailed => 'Fragman açılamadı.';

  @override
  String get addToWatchlist => 'Listem';

  @override
  String get removedFromWatchlist => 'Listeden çıkarıldı';

  @override
  String get addedToWatchlist => 'Listeye eklendi';

  @override
  String get share => 'Paylaş';

  @override
  String get readMore => 'Devamını oku';

  @override
  String get readLess => 'Daha az oku';

  @override
  String get searchHint => 'Film, oyuncu, tür ara…';

  @override
  String get recentSearches => 'Son Aramalar';

  @override
  String get trendingSearches => 'Popüler Aramalar';

  @override
  String get clearAll => 'Hepsini Temizle';

  @override
  String get clearRecentSearchesMessage =>
      'Tüm son aramalarınız silinsin mi? Bu işlem geri alınamaz.';

  @override
  String get noResultsFound => 'Film bulunamadı';

  @override
  String get noResultsSubtitle => 'Farklı bir başlık, oyuncu veya tür deneyin.';

  @override
  String get startSearching => 'En sevdiğiniz filmleri arayın';

  @override
  String get startSearchingSubtitle =>
      'Başlıkları bulun, oyunculara göz atın ve yeni şeyler keşfedin.';

  @override
  String get browseCategory => 'Kategoriye Göz At';

  @override
  String get noCategoriesAvailable => 'Kategori mevcut değil';

  @override
  String get checkBackLaterGenres =>
      'Göz atılacak türler için daha sonra tekrar kontrol edin.';

  @override
  String get noMoviesInGenre => 'Henüz film yok';

  @override
  String get checkBackSoonGenre =>
      'Şu anda bu türde hiçbir şey yok — yakında tekrar kontrol edin.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'İzleme Listem ($count)',
      zero: 'İzleme Listem',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'İzleme listeniz boş';

  @override
  String get watchlistEmptySubtitle =>
      'Kaydettiğiniz filmler burada görünecek, böylece onları asla kaybetmeyeceksiniz.';

  @override
  String removedFromWatchlistSnack(String title) {
    return '\"$title\" çıkarıldı';
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
      'Favori olarak işaretlediğiniz filmler burada görünecek.';

  @override
  String removedFromFavoritesSnack(String title) {
    return '\"$title\" favorilerden çıkarıldı';
  }

  @override
  String get undo => 'GERİ AL';

  @override
  String get retry => 'Yeniden Dene';

  @override
  String get genericErrorSubtitle =>
      'İçerik yüklenirken bir sorunla karşılaştık. Lütfen tekrar deneyin.';

  @override
  String get noInternetSubtitle =>
      'Lütfen bağlantınızı kontrol edin ve tekrar deneyin.';

  @override
  String get profileTitle => 'Profil';

  @override
  String get yourLibrary => 'Kütüphaneniz';

  @override
  String get everythingSaved => 'Kaydettiğiniz her şey tek bir yerde';

  @override
  String get favoritesLabel => 'Favoriler';

  @override
  String get watchlistLabel => 'İzleme Listesi';

  @override
  String get settingsLabel => 'Ayarlar';

  @override
  String get settingsSubtitle => 'Tema, dil ve hakkında';

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
  String get aboutThisApp => 'Uygulama Hakkında';

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
      'Premium bir film keşif uygulaması — trend olan, popüler ve en çok oylanan başlıklara göz atın, arama yapın ve izlemek istediklerinizi takip edin.';

  @override
  String get tmdbAttribution =>
      'Bu ürün TMDB API\'sini kullanır ancak TMDB tarafından onaylanmamıştır veya sertifikalandırılmamıştır.';

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
  String get cancel => 'İptal';

  @override
  String get confirm => 'Onayla';

  @override
  String get removeLabel => 'Kaldır';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — fragmana göz atın: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Movies\'teki \"$title\" filmine göz atın!';
  }

  @override
  String get notificationsLabel => 'Bildirimler';

  @override
  String get notificationsSubtitle =>
      'Neler hakkında bildirim alacağınızı yönetin';

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
  String get enterName => 'Adınızı girin';

  @override
  String get profileUpdated => 'Profil başarıyla güncellendi';

  @override
  String get signIn => 'Giriş Yap';

  @override
  String get signUp => 'Kayıt Ol';

  @override
  String get welcomeBack => 'Tekrar Hoş Geldiniz';

  @override
  String get signInSubtitle =>
      'İzleme listenizi ve favorilerinizi cihazlar arasında senkronize etmek için giriş yapın.';

  @override
  String get createAccount => 'Hesap Oluştur';

  @override
  String get signUpSubtitle =>
      'İzleme listenizi ve favorilerinizi hesabınıza kaydetmek için kayıt olun.';

  @override
  String get emailLabel => 'E-posta';

  @override
  String get passwordLabel => 'Şifre';

  @override
  String get confirmPasswordLabel => 'Şifreyi Onayla';

  @override
  String get nameLabel => 'Ad';

  @override
  String get forgotPassword => 'Şifrenizi mi unuttunuz?';

  @override
  String get noAccountYet => 'Henüz hesabınız yok mu? ';

  @override
  String get alreadyHaveAccount => 'Zaten bir hesabınız var mı? ';

  @override
  String get continueAsGuest => 'Misafir Olarak Devam Et';

  @override
  String get authErrorFieldRequired => 'Bu alan zorunludur.';

  @override
  String get authErrorInvalidEmail => 'Geçerli bir e-posta adresi girin.';

  @override
  String get authErrorUserDisabled => 'Bu hesap devre dışı bırakıldı.';

  @override
  String get authErrorUserNotFound =>
      'Bu e-posta ile kayıtlı hesap bulunamadı.';

  @override
  String get authErrorWrongPassword => 'Hatalı e-posta veya şifre.';

  @override
  String get authErrorEmailInUse => 'Bu e-posta ile zaten bir hesap mevcut.';

  @override
  String get authErrorWeakPassword => 'Bu şifre çok zayıf.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'Şifre en az $minLength karakter olmalıdır.';
  }

  @override
  String get authErrorTooManyRequests =>
      'Çok fazla deneme. Lütfen bir süre bekleyip tekrar deneyin.';

  @override
  String get authErrorNotConfigured =>
      'Bu uygulama için giriş henüz ayarlanmadı.';

  @override
  String get authErrorRequiresRecentLogin =>
      'Devam etmek için lütfen tekrar giriş yapın.';

  @override
  String get authErrorPasswordMismatch => 'Şifreler eşleşmiyor.';

  @override
  String get authEnterEmailFirst => 'Önce yukarıya e-postanızı girin.';

  @override
  String authResetEmailSent(String email) {
    return 'Şifre sıfırlama e-postası $email adresine gönderildi.';
  }

  @override
  String get authSyncBannerTitle => 'Senkronizasyon için giriş yapın';

  @override
  String get authSyncBannerSubtitle =>
      'İzleme listenizi ve favorilerinizi hesabınıza kaydedin ve her cihazdan erişin.';

  @override
  String get signOut => 'Çıkış Yap';

  @override
  String get signOutConfirmTitle => 'Çıkış yapılsın mı?';

  @override
  String get signOutConfirmMessage =>
      'İstediğiniz zaman tekrar giriş yapabilirsiniz. Listeniz ve favorileriniz hesabınızda kayıtlı kalır.';

  @override
  String get signedOutSnack => 'Çıkış yapıldı';

  @override
  String get guestBadge => 'Misafir';

  @override
  String get syncedToAccount => 'Hesabınızla senkronize edildi';

  @override
  String get localOnlyBanner =>
      'Yalnızca bu cihazda kaydedildi — senkronizasyon için giriş yapın';

  @override
  String get editProfile => 'Profili Düzenle';

  @override
  String get photoUrlLabel => 'Fotoğraf URL\'si';

  @override
  String get photoUrlFieldHint => 'https://example.com/photo.jpg';

  @override
  String get photoUrlHint =>
      'Bir resim bağlantısı yapıştırın. Fotoğrafı kaldırmak için boş bırakın.';

  @override
  String get invalidUrlError =>
      'http:// veya https:// ile başlayan geçerli bir resim URL\'si girin.';

  @override
  String get saveChanges => 'Değişiklikleri Kaydet';

  @override
  String get profileUpdatedSnack => 'Profil güncellendi';

  @override
  String get deleteAccountAction => 'Hesabı Sil';

  @override
  String get deleteAccountConfirmTitle => 'Hesabınız silinsin mi?';

  @override
  String get deleteAccountConfirmMessage =>
      'Bu, hesabınızı ve giriş bilgilerinizi kalıcı olarak siler. Listeniz bu cihazda kalır ancak artık senkronize edilmez. Bu işlem geri alınamaz.';

  @override
  String get accountDeletedSnack => 'Hesap silindi';

  @override
  String get chatbotEntrySubtitle => 'SSS asistanımızdan hızlı cevaplar alın';

  @override
  String get faqEntrySubtitle => 'Yaygın soru ve cevaplara göz atın';

  @override
  String get contactUsEntrySubtitle => 'Bize bir mesaj gönderin';

  @override
  String get feedbackEntrySubtitle =>
      'Uygulamayı oylayın ve ne düşündüğünüzü bize bildirin';

  @override
  String get aboutEntrySubtitle => 'Sürüm, krediler ve yasal bilgiler';

  @override
  String get chatbotTitle => 'Yardım Asistanı';

  @override
  String get chatbotGreeting =>
      'Selam! Uygulamayı kullanma hakkında bana her şeyi sorabilirsin — yardımcı olmak için elimden geleni yapacağım.';

  @override
  String get chatbotInputHint => 'Sorunuzu yazın…';

  @override
  String get chatbotNoMatch =>
      'Bundan emin değilim. Farklı şekilde sormayı deneyin, SSS\'ye göz atın veya bizimle iletişime geçin.';

  @override
  String get chatbotContactHumanPrompt =>
      'Gerçek birine mi ihtiyacınız var? Bize ulaşın';

  @override
  String get faqTitle => 'Sıkça Sorulan Sorular';

  @override
  String get faqSearchHint => 'SSS\'de ara…';

  @override
  String get faqNoResultsSubtitle =>
      'Farklı bir arama terimi deneyin veya sohbet asistanımıza sorun.';

  @override
  String get faqQAboutApp => 'Bu uygulama nedir?';

  @override
  String get faqAAboutApp =>
      'MOVIES, bir film keşif uygulamasıdır — trend olan, popüler filmlere göz atın, arama yapın ve izlemek istediklerinizi takip edin.';

  @override
  String get faqQSearch => 'Nasıl film ararım?';

  @override
  String get faqASearch =>
      'Alt menüde Arama\'ya dokunun, ardından bir başlık, oyuncu veya tür yazın. Sonuçlar siz yazdıkça güncellenir.';

  @override
  String get faqQWatchlistVsFavorites =>
      'İzleme Listesi ile Favoriler arasındaki fark nedir?';

  @override
  String get faqAWatchlistVsFavorites =>
      'İzleme Listesi, izlemeyi planladığınız filmler içindir. Favoriler, zaten sevdiğiniz filmler içindir.';

  @override
  String get faqQSaveMovie => 'Bir filmi nasıl kaydederim?';

  @override
  String get faqASaveMovie =>
      'Herhangi bir film kartındaki yer işareti simgesine dokunun veya detay sayfasındaki düğmeleri kullanın.';

  @override
  String get faqQNeedAccount =>
      'Uygulamayı kullanmak için hesaba ihtiyacım var mı?';

  @override
  String get faqANeedAccount =>
      'Hayır — her şey misafir olarak çalışır ve cihazınıza kaydedilir. Giriş yapmak cihazlar arası senkronizasyon sağlar.';

  @override
  String get faqQSignIn => 'Nasıl giriş yaparım veya hesap oluştururum?';

  @override
  String get faqASignIn =>
      'Profile gidin ve giriş başlığına dokunun. Kayıt için sadece ad, e-posta ve şifre gerekir.';

  @override
  String get faqQSyncDevices => 'Cihazlar arası senkronizasyon nasıl çalışır?';

  @override
  String get faqASyncDevices =>
      'Giriş yaptığınızda verileriniz otomatik olarak hesabınızla senkronize edilir ve aynı hesaptaki diğer cihazlarda gerçek zamanlı güncellenir.';

  @override
  String get faqQOffline => 'Uygulama çevrimdışı çalışıyor mu?';

  @override
  String get faqAOffline =>
      'Listeniz ve favorileriniz cihazınızda saklandığı için her zaman çevrimdışı kullanılabilir. Yeni film aramak için internet gerekir.';

  @override
  String get faqQChangeLanguage => 'Uygulama dilini nasıl değiştiririm?';

  @override
  String get faqAChangeLanguage =>
      'Ayarlar → Dil kısmına gidin ve 12 desteklenen dilden birini seçin veya Sistem Varsayılanı\'nı seçin.';

  @override
  String get faqQChangeTheme =>
      'Açık ve koyu mod arasında nasıl geçiş yaparım?';

  @override
  String get faqAChangeTheme =>
      'Ayarlar → Görünüm kısmına gidin ve Açık, Koyu veya Otomatik\'i seçin.';

  @override
  String get faqQWatchTrailer => 'Fragmanı nasıl izlerim?';

  @override
  String get faqAWatchTrailer =>
      'Filmin detay sayfasını açın ve Fragmanı İzle\'ye dokunun. Varsa YouTube\'da açılır.';

  @override
  String get faqQDeleteAccount => 'Hesabımı nasıl silerim?';

  @override
  String get faqADeleteAccount =>
      'Profil → Profili Düzenle kısmına gidin ve Hesabı Sil\'e kaydırın. Bulut verileriniz kalıcı olarak silinir.';

  @override
  String get faqQContactSupport => 'Destekle nasıl iletişime geçerim?';

  @override
  String get faqAContactSupport =>
      'Yardım Merkezi → Bize Ulaşın kısmına gidin ve bize mesaj gönderin; e-posta uygulamanız açılacaktır.';

  @override
  String get contactUsTitle => 'Bize Ulaşın';

  @override
  String get contactUsSubtitle =>
      'Bir sorunuz veya probleminiz mi var? Bize bir mesaj gönderin, size geri döneceğiz.';

  @override
  String get contactSubjectLabel => 'Konu';

  @override
  String get contactMessageLabel => 'Mesaj';

  @override
  String get contactSendAction => 'Mesaj Gönder';

  @override
  String get contactMailAppUnavailable =>
      'Bu cihazda e-posta uygulaması bulunamadı.';

  @override
  String contactEmailBodyTemplate(String name, String email, String message) {
    return 'Ad: $name\nE-posta: $email\n\n$message';
  }

  @override
  String get feedbackTitle => 'Geri Bildirim';

  @override
  String get feedbackSubtitle => 'Uygulama deneyiminiz şu ana kadar nasıl?';

  @override
  String get feedbackCommentHint =>
      'Bize daha fazlasını anlatın (isteğe bağlı)…';

  @override
  String get feedbackSendAction => 'Geri Bildirim Gönder';

  @override
  String get feedbackRatingRequired => 'Lütfen önce bir yıldız puanı seçin.';

  @override
  String get feedbackThanks => 'Geri bildiriminiz için teşekkürler!';

  @override
  String get feedbackNoComment => '(Yorum yapılmadı)';

  @override
  String get feedbackEmailSubject => 'Uygulama Geri Bildirimi';

  @override
  String feedbackEmailBodyTemplate(int rating, String comment) {
    return 'Puan: $rating/5\n\n$comment';
  }

  @override
  String get termsTitle => 'Hizmet Şartları';

  @override
  String get privacyTitle => 'Gizlilik Politikası';

  @override
  String get legalLastUpdated => 'Son güncelleme: Ocak 2026';

  @override
  String get termsSection1Title => '1. Şartların Kabulü';

  @override
  String get termsSection1Body =>
      'Bu uygulamayı kullanarak bu Şartları kabul etmiş olursunuz. Kabul etmiyorsanız lütfen uygulamayı kullanmayın.';

  @override
  String get termsSection2Title => '2. Hizmet';

  @override
  String get termsSection2Body =>
      'Bu uygulama TMDB\'den gelen film bilgilerini görmenizi sağlar. Biz kendimiz herhangi bir video içeriği barındırmıyoruz.';

  @override
  String get termsSection3Title => '3. Hesaplar';

  @override
  String get termsSection3Body =>
      'Misafir olarak çoğu özelliği kullanabilirsiniz. Hesap oluşturmak senkronizasyonu sağlar. Şifre güvenliğinden siz sorumlusunuz.';

  @override
  String get termsSection4Title => '4. İçeriğiniz';

  @override
  String get termsSection4Body =>
      'Verileriniz size aittir. Bunları hizmet sunmak için saklıyoruz ve satmıyoruz.';

  @override
  String get termsSection5Title => '5. Üçüncü Taraf Verileri';

  @override
  String get termsSection5Body =>
      'Film bilgileri TMDB tarafından sağlanır ve değişebilir. Uygulama API kullanır ancak TMDB onaylı değildir.';

  @override
  String get termsSection6Title => '6. Fesih';

  @override
  String get termsSection6Body =>
      'Hesabınızı istediğiniz zaman silebilirsiniz. İhlal durumunda erişimi askıya alabiliriz.';

  @override
  String get termsSection7Title => '7. Şartlardaki Değişiklikler';

  @override
  String get termsSection7Body =>
      'Şartları zaman zaman güncelleyebiliriz. Kullanmaya devam etmeniz güncel şartları kabul ettiğiniz anlamına gelir.';

  @override
  String get privacySection1Title => '1. Neleri Topluyoruz';

  @override
  String get privacySection1Body =>
      'Misafir modunda kişisel veri toplamıyoruz. Hesapla: ad, e-posta ve isteğe bağlı foto.';

  @override
  String get privacySection2Title => '2. Liste Verileri';

  @override
  String get privacySection2Body =>
      'Firestore\'da güvenli şekilde saklanır ve sadece sizin tarafınızdan erişilebilir.';

  @override
  String get privacySection3Title => '3. Üçüncü Taraf Hizmetleri';

  @override
  String get privacySection3Body =>
      'Bilgi için TMDB, depolama için Firebase kullanıyoruz. Kendi politikaları geçerlidir.';

  @override
  String get privacySection4Title => '4. Yerel Depolama';

  @override
  String get privacySection4Body =>
      'Tercihleriniz hızlı çalışma için cihazınızda yerel olarak (Hive ile) saklanır.';

  @override
  String get privacySection5Title => '5. Veri Silme';

  @override
  String get privacySection5Body =>
      'Hesap silme işlemi bulut verilerini siler. Yerel veriler uygulama önbelleği silinene kadar kalır.';

  @override
  String get privacySection6Title => '6. İletişim';

  @override
  String get privacySection6Body =>
      'Sorularınız mı var? Yardım Merkezi üzerinden bize ulaşın.';
}
