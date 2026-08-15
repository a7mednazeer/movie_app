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
  String get photoUrlFieldHint => 'https://example.com/photo.jpg';

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

  @override
  String get chatbotEntrySubtitle =>
      'Schnelle Antworten von unserem FAQ-Assistenten';

  @override
  String get faqEntrySubtitle => 'Häufige Fragen und Antworten durchsuchen';

  @override
  String get contactUsEntrySubtitle => 'Sende uns eine Nachricht';

  @override
  String get feedbackEntrySubtitle =>
      'Bewerte die App und sag uns deine Meinung';

  @override
  String get aboutEntrySubtitle => 'Version, Credits und Rechtliches';

  @override
  String get chatbotTitle => 'Hilfe-Assistent';

  @override
  String get chatbotGreeting =>
      'Hallo! Frag mich alles zur Nutzung der App — ich helfe dir so gut ich kann.';

  @override
  String get chatbotInputHint => 'Gib deine Frage ein…';

  @override
  String get chatbotNoMatch =>
      'Da bin ich mir nicht sicher. Versuche es anders zu formulieren, schau in die FAQ oder kontaktiere uns — eine echte Person hilft dir weiter.';

  @override
  String get chatbotContactHumanPrompt =>
      'Brauchst du eine echte Person? Kontaktiere uns';

  @override
  String get faqTitle => 'Häufig gestellte Fragen';

  @override
  String get faqSearchHint => 'FAQ durchsuchen…';

  @override
  String get faqNoResultsSubtitle =>
      'Versuche einen anderen Suchbegriff oder frag unseren Chat-Assistenten.';

  @override
  String get faqQAboutApp => 'Was ist diese App?';

  @override
  String get faqAAboutApp =>
      'MOVIES ist eine App zum Entdecken von Filmen — durchstöbere Trends, beliebte und bestbewertete Titel, suche nach allem und behalte im Blick, was du sehen möchtest.';

  @override
  String get faqQSearch => 'Wie suche ich nach einem Film?';

  @override
  String get faqASearch =>
      'Tippe unten in der Navigation auf Suche und gib einen Titel, Schauspieler oder ein Genre ein. Die Ergebnisse werden während der Eingabe aktualisiert.';

  @override
  String get faqQWatchlistVsFavorites =>
      'Was ist der Unterschied zwischen Merkliste und Favoriten?';

  @override
  String get faqAWatchlistVsFavorites =>
      'Die Merkliste ist für Filme, die du dir ansehen möchtest. Favoriten sind Filme, die du bereits liebst. Sie werden getrennt geführt, ein Film kann in beiden sein.';

  @override
  String get faqQSaveMovie => 'Wie speichere ich einen Film?';

  @override
  String get faqASaveMovie =>
      'Tippe auf das Lesezeichen-Symbol auf einer Filmkarte oder nutze die Merkliste-/Favoriten-Schaltflächen auf der Detailseite eines Films.';

  @override
  String get faqQNeedAccount => 'Brauche ich ein Konto, um die App zu nutzen?';

  @override
  String get faqANeedAccount =>
      'Nein — alles funktioniert als Gast, lokal auf deinem Gerät gespeichert. Die Anmeldung fügt geräteübergreifende Synchronisierung hinzu, sodass deine Merkliste und Favoriten dich auf jedes Gerät begleiten, auf dem du dich anmeldest.';

  @override
  String get faqQSignIn => 'Wie melde ich mich an oder erstelle ein Konto?';

  @override
  String get faqASignIn =>
      'Gehe zu Profil und tippe auf das Anmelde-Banner, oder Profil → dein Kontobereich, falls bereits eingerichtet. Für die Registrierung brauchst du nur Name, E-Mail und Passwort.';

  @override
  String get faqQSyncDevices =>
      'Wie funktioniert die geräteübergreifende Synchronisierung?';

  @override
  String get faqASyncDevices =>
      'Sobald du angemeldet bist, werden deine Merkliste und Favoriten automatisch mit deinem Konto synchronisiert und in Echtzeit auf jedem anderen Gerät aktualisiert, das mit demselben Konto angemeldet ist.';

  @override
  String get faqQOffline => 'Funktioniert die App offline?';

  @override
  String get faqAOffline =>
      'Deine Merkliste und Favoriten sind immer offline verfügbar, da sie auf deinem Gerät gespeichert sind. Zum Entdecken neuer Filme ist eine Internetverbindung nötig.';

  @override
  String get faqQChangeLanguage => 'Wie ändere ich die Sprache der App?';

  @override
  String get faqAChangeLanguage =>
      'Gehe zu Einstellungen → Sprache und wähle aus 12 verfügbaren Sprachen, oder wähle Systemstandard, um der Gerätesprache zu folgen.';

  @override
  String get faqQChangeTheme =>
      'Wie wechsle ich zwischen hellem und dunklem Modus?';

  @override
  String get faqAChangeTheme =>
      'Gehe zu Einstellungen → Erscheinungsbild und wähle Hell, Dunkel oder Automatisch, um der Geräteeinstellung zu folgen.';

  @override
  String get faqQWatchTrailer => 'Wie schaue ich einen Trailer?';

  @override
  String get faqAWatchTrailer =>
      'Öffne die Detailseite eines Films und tippe auf Trailer ansehen. Er öffnet sich in YouTube, falls ein Trailer für diesen Titel verfügbar ist.';

  @override
  String get faqQDeleteAccount => 'Wie lösche ich mein Konto?';

  @override
  String get faqADeleteAccount =>
      'Gehe zu Profil → Profil bearbeiten und scrolle zu Konto löschen. Dies entfernt dein Konto dauerhaft; deine Merkliste und Favoriten bleiben auf deinem Gerät, werden aber nicht mehr synchronisiert.';

  @override
  String get faqQContactSupport => 'Wie kontaktiere ich den Support?';

  @override
  String get faqAContactSupport =>
      'Gehe zu Hilfe-Center → Kontakt und sende uns eine Nachricht — sie öffnet deine E-Mail-App mit allem vorausgefüllt.';

  @override
  String get contactUsTitle => 'Kontakt';

  @override
  String get contactUsSubtitle =>
      'Hast du eine Frage oder ein Problem? Sende uns eine Nachricht, wir melden uns bei dir.';

  @override
  String get contactSubjectLabel => 'Betreff';

  @override
  String get contactMessageLabel => 'Nachricht';

  @override
  String get contactSendAction => 'Nachricht senden';

  @override
  String get contactMailAppUnavailable =>
      'Keine E-Mail-App auf diesem Gerät gefunden.';

  @override
  String contactEmailBodyTemplate(String name, String email, String message) {
    return 'Name: $name\nE-Mail: $email\n\n$message';
  }

  @override
  String get feedbackTitle => 'Feedback';

  @override
  String get feedbackSubtitle =>
      'Wie ist deine bisherige Erfahrung mit der App?';

  @override
  String get feedbackCommentHint => 'Erzähl uns mehr (optional)…';

  @override
  String get feedbackSendAction => 'Feedback senden';

  @override
  String get feedbackRatingRequired =>
      'Bitte wähle zuerst eine Sternebewertung.';

  @override
  String get feedbackThanks => 'Danke für dein Feedback!';

  @override
  String get feedbackNoComment => '(Kein Kommentar angegeben)';

  @override
  String get feedbackEmailSubject => 'App-Feedback';

  @override
  String feedbackEmailBodyTemplate(int rating, String comment) {
    return 'Bewertung: $rating/5\n\n$comment';
  }

  @override
  String get termsTitle => 'Nutzungsbedingungen';

  @override
  String get privacyTitle => 'Datenschutzerklärung';

  @override
  String get legalLastUpdated => 'Zuletzt aktualisiert: Januar 2026';

  @override
  String get termsSection1Title => '1. Annahme der Bedingungen';

  @override
  String get termsSection1Body =>
      'Durch die Nutzung dieser App stimmst du diesen Nutzungsbedingungen zu. Falls du nicht einverstanden bist, nutze die App bitte nicht.';

  @override
  String get termsSection2Title => '2. Der Dienst';

  @override
  String get termsSection2Body =>
      'Diese App ermöglicht dir das Durchstöbern, Suchen und Speichern von Filminformationen von The Movie Database (TMDB). Wir hosten, streamen oder verbreiten selbst keine Videoinhalte.';

  @override
  String get termsSection3Title => '3. Konten';

  @override
  String get termsSection3Body =>
      'Du kannst die meisten Funktionen als Gast ohne Konto nutzen. Ein Konto (E-Mail und Passwort, über Firebase Authentication) ermöglicht die Synchronisierung deiner Merkliste und Favoriten über deine Geräte hinweg. Du bist für die Sicherheit deines Passworts verantwortlich.';

  @override
  String get termsSection4Title => '4. Deine Inhalte';

  @override
  String get termsSection4Body =>
      'Deine Merkliste, Favoriten, dein Profilname und deine Foto-URL gehören dir. Wir speichern sie, um den Dienst bereitzustellen, und verkaufen sie nicht oder nutzen sie für Werbung.';

  @override
  String get termsSection5Title => '5. Daten Dritter';

  @override
  String get termsSection5Body =>
      'Filmtitel, Poster, Bewertungen, Besetzung und Rezensionen werden von TMDB bereitgestellt und können ungenau sein oder sich ohne Vorankündigung ändern. Dieses Produkt nutzt die TMDB-API, wird jedoch nicht von TMDB unterstützt oder zertifiziert.';

  @override
  String get termsSection6Title => '6. Kündigung';

  @override
  String get termsSection6Body =>
      'Du kannst dein Konto jederzeit über Profil → Profil bearbeiten löschen. Wir können den Zugriff bei Verstößen gegen diese Bedingungen oder Missbrauch des Dienstes sperren.';

  @override
  String get termsSection7Title => '7. Änderungen dieser Bedingungen';

  @override
  String get termsSection7Body =>
      'Wir können diese Bedingungen von Zeit zu Zeit aktualisieren. Die fortgesetzte Nutzung der App nach Änderungen bedeutet, dass du die aktualisierten Bedingungen akzeptierst.';

  @override
  String get privacySection1Title => '1. Was wir sammeln';

  @override
  String get privacySection1Body =>
      'Wenn du die App als Gast nutzt, sammeln wir keine personenbezogenen Daten — deine Merkliste und Favoriten werden nur auf deinem Gerät gespeichert. Wenn du ein Konto erstellst, sammeln wir deinen Namen, deine E-Mail-Adresse und (optional) eine Profilfoto-URL über Firebase Authentication.';

  @override
  String get privacySection2Title => '2. Merklisten- und Favoritendaten';

  @override
  String get privacySection2Body =>
      'Bei Anmeldung werden deine gespeicherten Filme in Firestore unter deinem Konto gespeichert und über deine Geräte synchronisiert. Die Daten jedes Kontos sind nur für dieses Konto zugänglich — durchgesetzt durch Firestore-Sicherheitsregeln.';

  @override
  String get privacySection3Title => '3. Dienste Dritter';

  @override
  String get privacySection3Body =>
      'Wir nutzen The Movie Database (TMDB) zum Abrufen von Filminformationen und Firebase (Google) für Authentifizierung und Datenspeicherung. Diese Dienste haben eigene Datenschutzrichtlinien für die Datenverarbeitung auf ihrer Seite.';

  @override
  String get privacySection4Title => '4. Lokale Speicherung';

  @override
  String get privacySection4Body =>
      'Deine Merkliste, Favoriten, Design- und Spracheinstellungen werden lokal auf deinem Gerät gespeichert (über Hive), damit die App offline und sofort funktioniert, unabhängig davon, ob du angemeldet bist.';

  @override
  String get privacySection5Title => '5. Datenlöschung';

  @override
  String get privacySection5Body =>
      'Du kannst dein Konto jederzeit über Profil → Profil bearbeiten löschen, wodurch dein Konto dauerhaft entfernt und jede weitere Synchronisierung gestoppt wird. Bereits lokal auf deinem Gerät gespeicherte Daten bleiben erhalten, bis du den App-Speicher löschst.';

  @override
  String get privacySection6Title => '6. Kontakt';

  @override
  String get privacySection6Body =>
      'Fragen zu dieser Richtlinie? Erreiche uns über Hilfe-Center → Kontakt.';
}
