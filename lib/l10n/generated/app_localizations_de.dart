// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTagline => 'DEINE WELT DES KINOS';

  @override
  String get navHome => 'Start';

  @override
  String get navSearch => 'Suche';

  @override
  String get navBrowse => 'Entdecken';

  @override
  String get navWatchlist => 'Merkliste';

  @override
  String get navProfile => 'Profil';

  @override
  String get sectionTrending => 'Im Trend';

  @override
  String get sectionPopular => 'Beliebte Filme';

  @override
  String get sectionTopRated => 'Bestbewertet';

  @override
  String get sectionUpcoming => 'Demnächst';

  @override
  String get sectionRecommended => 'Für dich empfohlen';

  @override
  String get sectionCategories => 'Kategorien';

  @override
  String get seeAll => 'Alle anzeigen';

  @override
  String get moreLikeThis => 'Ähnliche Filme';

  @override
  String get cast => 'Besetzung';

  @override
  String get reviews => 'Rezensionen';

  @override
  String get noReviewsYet =>
      'Noch keine Rezensionen — teile als Erster deine Meinung.';

  @override
  String get overview => 'Handlung';

  @override
  String get watchTrailer => 'Trailer ansehen';

  @override
  String get noTrailerAvailable =>
      'Für diesen Titel ist noch kein Trailer verfügbar.';

  @override
  String get trailerOpenFailed => 'Der Trailer konnte nicht geöffnet werden.';

  @override
  String get addToWatchlist => 'Merkliste';

  @override
  String get removedFromWatchlist => 'Von der Merkliste entfernt';

  @override
  String get addedToWatchlist => 'Zur Merkliste hinzugefügt';

  @override
  String get share => 'Teilen';

  @override
  String get readMore => 'Mehr lesen';

  @override
  String get readLess => 'Weniger lesen';

  @override
  String get searchHint => 'Filme, Schauspieler, Genres suchen…';

  @override
  String get recentSearches => 'Letzte Suchen';

  @override
  String get trendingSearches => 'Beliebte Suchanfragen';

  @override
  String get clearAll => 'Alle löschen';

  @override
  String get clearRecentSearchesMessage =>
      'Alle letzten Suchen entfernen? Dies kann nicht rückgängig gemacht werden.';

  @override
  String get noResultsFound => 'Keine Filme gefunden';

  @override
  String get noResultsSubtitle =>
      'Versuche einen anderen Titel, Schauspieler oder Genre.';

  @override
  String get startSearching => 'Suche nach deinen Lieblingsfilmen';

  @override
  String get startSearchingSubtitle =>
      'Finde Titel, entdecke die Besetzung und Neues.';

  @override
  String get browseCategory => 'Kategorien entdecken';

  @override
  String get noCategoriesAvailable => 'Keine Kategorien verfügbar';

  @override
  String get checkBackLaterGenres =>
      'Schau später wieder vorbei, um Genres zu entdecken.';

  @override
  String get noMoviesInGenre => 'Noch keine Filme';

  @override
  String get checkBackSoonGenre =>
      'Momentan nichts in diesem Genre — schau bald wieder vorbei.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Meine Merkliste ($count)',
      zero: 'Meine Merkliste',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'Deine Merkliste ist leer';

  @override
  String get watchlistEmptySubtitle =>
      'Gespeicherte Filme erscheinen hier, damit du sie nie aus den Augen verlierst.';

  @override
  String removedFromWatchlistSnack(String title) {
    return '\"$title\" entfernt';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Favoriten ($count)',
      zero: 'Favoriten',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'Noch keine Favoriten';

  @override
  String get favoritesEmptySubtitle =>
      'Filme, die du in den Filmdetails als Favorit markierst, erscheinen hier.';

  @override
  String removedFromFavoritesSnack(String title) {
    return '\"$title\" aus Favoriten entfernt';
  }

  @override
  String get undo => 'RÜCKGÄNGIG';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String get genericErrorSubtitle =>
      'Beim Laden ist ein Fehler aufgetreten. Bitte versuche es erneut.';

  @override
  String get noInternetSubtitle =>
      'Überprüfe deine Verbindung und versuche es erneut.';

  @override
  String get profileTitle => 'Profil';

  @override
  String get yourLibrary => 'Deine Bibliothek';

  @override
  String get everythingSaved => 'Alles Gespeicherte an einem Ort';

  @override
  String get favoritesLabel => 'Favoriten';

  @override
  String get watchlistLabel => 'Merkliste';

  @override
  String get settingsLabel => 'Einstellungen';

  @override
  String get settingsSubtitle => 'Design, Sprache und mehr';

  @override
  String get settingsTitle => 'Einstellungen';

  @override
  String get appearance => 'Erscheinungsbild';

  @override
  String get preferences => 'Einstellungen';

  @override
  String get languageLabel => 'Sprache';

  @override
  String get aboutSection => 'Über';

  @override
  String get aboutThisApp => 'Über diese App';

  @override
  String versionLabel(String version) {
    return 'Version $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return 'Über $appName';
  }

  @override
  String get aboutDescription =>
      'Eine erstklassige App zum Entdecken von Filmen: Trends, beliebte und bestbewertete Titel, Suche und Übersicht, was du dir ansehen möchtest.';

  @override
  String get tmdbAttribution =>
      'Dieses Produkt nutzt die TMDB-API, wird jedoch nicht von TMDB unterstützt oder zertifiziert.';

  @override
  String get visitTmdb => 'TMDB besuchen';

  @override
  String get close => 'Schließen';

  @override
  String get comingSoon => 'Demnächst verfügbar';

  @override
  String get themeLight => 'Hell';

  @override
  String get themeDark => 'Dunkel';

  @override
  String get themeAuto => 'Automatisch';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get removeLabel => 'Entfernen';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — sieh dir den Trailer an: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Schau dir \"$title\" auf Movies an!';
  }

  @override
  String get notificationsLabel => 'Benachrichtigungen';

  @override
  String get notificationsSubtitle =>
      'Verwalte, worüber du benachrichtigt wirst';

  @override
  String get helpCenterLabel => 'Hilfe-Center';

  @override
  String get helpCenterSubtitle => 'FAQs, Kontakt und mehr';

  @override
  String get systemDefault => 'Systemstandard';

  @override
  String get back => 'Zurück';

  @override
  String get clear => 'Löschen';

  @override
  String get editInformation => 'Informationen bearbeiten';

  @override
  String get save => 'Speichern';

  @override
  String get displayName => 'Anzeigename';

  @override
  String get photoUrl => 'Foto-URL';

  @override
  String get pphotoUrlHint => 'https://example.com/avatar.jpg';

  @override
  String get enterName => 'Gib deinen Namen ein';

  @override
  String get profileUpdated => 'Profil erfolgreich aktualisiert';

  @override
  String get signIn => 'Anmelden';

  @override
  String get signUp => 'Registrieren';

  @override
  String get welcomeBack => 'Willkommen zurück';

  @override
  String get signInSubtitle =>
      'Melde dich an, um deine Liste und Favoriten geräteübergreifend zu synchronisieren.';

  @override
  String get createAccount => 'Konto erstellen';

  @override
  String get signUpSubtitle =>
      'Registriere dich, um deine Liste und Favoriten in deinem Konto zu speichern.';

  @override
  String get emailLabel => 'E-Mail';

  @override
  String get passwordLabel => 'Passwort';

  @override
  String get confirmPasswordLabel => 'Passwort bestätigen';

  @override
  String get nameLabel => 'Name';

  @override
  String get forgotPassword => 'Passwort vergessen?';

  @override
  String get noAccountYet => 'Noch kein Konto? ';

  @override
  String get alreadyHaveAccount => 'Bereits ein Konto? ';

  @override
  String get continueAsGuest => 'Als Gast fortfahren';

  @override
  String get authErrorFieldRequired => 'Dieses Feld ist erforderlich.';

  @override
  String get authErrorInvalidEmail => 'Gib eine gültige E-Mail-Adresse ein.';

  @override
  String get authErrorUserDisabled => 'Dieses Konto wurde deaktiviert.';

  @override
  String get authErrorUserNotFound => 'Kein Konto mit dieser E-Mail gefunden.';

  @override
  String get authErrorWrongPassword => 'Falsche E-Mail oder falsches Passwort.';

  @override
  String get authErrorEmailInUse =>
      'Es existiert bereits ein Konto mit dieser E-Mail.';

  @override
  String get authErrorWeakPassword => 'Dieses Passwort ist zu schwach.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'Das Passwort muss mindestens $minLength Zeichen lang sein.';
  }

  @override
  String get authErrorTooManyRequests =>
      'Zu viele Versuche. Bitte warte einen Moment und versuche es erneut.';

  @override
  String get authErrorNotConfigured =>
      'Die Anmeldung ist für diese App noch nicht eingerichtet.';

  @override
  String get authErrorRequiresRecentLogin =>
      'Bitte melde dich erneut an, um fortzufahren.';

  @override
  String get authErrorPasswordMismatch =>
      'Die Passwörter stimmen nicht überein.';

  @override
  String get authEnterEmailFirst => 'Gib oben zuerst deine E-Mail-Adresse ein.';

  @override
  String authResetEmailSent(String email) {
    return 'E-Mail zum Zurücksetzen des Passworts an $email gesendet.';
  }

  @override
  String get authSyncBannerTitle => 'Zum Synchronisieren anmelden';

  @override
  String get authSyncBannerSubtitle =>
      'Speichere deine Liste und Favoriten in deinem Konto und greife von jedem Gerät darauf zu.';

  @override
  String get signOut => 'Abmelden';

  @override
  String get signOutConfirmTitle => 'Abmelden?';

  @override
  String get signOutConfirmMessage =>
      'Du kannst dich jederzeit wieder anmelden. Deine Liste und Favoriten bleiben in deinem Konto gespeichert.';

  @override
  String get signedOutSnack => 'Abgemeldet';

  @override
  String get guestBadge => 'Gast';

  @override
  String get syncedToAccount => 'Mit deinem Konto synchronisiert';

  @override
  String get localOnlyBanner =>
      'Nur auf diesem Gerät gespeichert — melde dich an, um geräteübergreifend zu synchronisieren';

  @override
  String get editProfile => 'Profil bearbeiten';

  @override
  String get photoUrlLabel => 'Foto-URL';

  @override
  String get photoUrlHint =>
      'Füge einen Link zu einem Bild ein. Leer lassen, um dein Foto zu entfernen.';

  @override
  String get invalidUrlError =>
      'Gib eine gültige Bild-URL ein, die mit http:// oder https:// beginnt.';

  @override
  String get saveChanges => 'Änderungen speichern';

  @override
  String get profileUpdatedSnack => 'Profil aktualisiert';

  @override
  String get deleteAccountAction => 'Konto löschen';

  @override
  String get deleteAccountConfirmTitle => 'Konto löschen?';

  @override
  String get deleteAccountConfirmMessage =>
      'Dies löscht dein Konto und deine Anmeldung dauerhaft. Deine Liste und Favoriten bleiben auf diesem Gerät, werden aber nirgendwo mehr synchronisiert. Dies kann nicht rückgängig gemacht werden.';

  @override
  String get accountDeletedSnack => 'Konto gelöscht';
}
