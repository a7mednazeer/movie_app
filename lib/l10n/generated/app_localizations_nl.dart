// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTagline => 'JOUW WERELD VAN CINEMA';

  @override
  String get navHome => 'Home';

  @override
  String get navSearch => 'Zoeken';

  @override
  String get navBrowse => 'Bladeren';

  @override
  String get navWatchlist => 'Kijklijst';

  @override
  String get navProfile => 'Profiel';

  @override
  String get sectionTrending => 'Nu trending';

  @override
  String get sectionPopular => 'Populaire films';

  @override
  String get sectionTopRated => 'Best beoordeeld';

  @override
  String get sectionUpcoming => 'Binnenkort';

  @override
  String get sectionRecommended => 'Aanbevolen voor jou';

  @override
  String get sectionCategories => 'Categorieën';

  @override
  String get seeAll => 'Alles zien';

  @override
  String get moreLikeThis => 'Vergelijkbare films';

  @override
  String get cast => 'Cast';

  @override
  String get reviews => 'Recensies';

  @override
  String get noReviewsYet => 'Nog geen recensies — deel als eerste je mening.';

  @override
  String get overview => 'Overzicht';

  @override
  String get watchTrailer => 'Trailer bekijken';

  @override
  String get noTrailerAvailable =>
      'Nog geen trailer beschikbaar voor deze titel.';

  @override
  String get trailerOpenFailed => 'Kon de trailer niet openen.';

  @override
  String get addToWatchlist => 'Kijklijst';

  @override
  String get removedFromWatchlist => 'Verwijderd van kijklijst';

  @override
  String get addedToWatchlist => 'Toegevoegd aan kijklijst';

  @override
  String get share => 'Delen';

  @override
  String get readMore => 'Lees meer';

  @override
  String get readLess => 'Lees minder';

  @override
  String get searchHint => 'Zoek films, acteurs, genres…';

  @override
  String get recentSearches => 'Recente zoekopdrachten';

  @override
  String get trendingSearches => 'Populaire zoekopdrachten';

  @override
  String get clearAll => 'Alles wissen';

  @override
  String get clearRecentSearchesMessage =>
      'Al je recente zoekopdrachten verwijderen? Dit kan niet ongedaan worden gemaakt.';

  @override
  String get noResultsFound => 'Geen films gevonden';

  @override
  String get noResultsSubtitle => 'Probeer een andere titel, acteur of genre.';

  @override
  String get startSearching => 'Zoek naar je favoriete films';

  @override
  String get startSearchingSubtitle =>
      'Vind titels, blader door de cast en ontdek iets nieuws.';

  @override
  String get browseCategory => 'Categorie doorbladeren';

  @override
  String get noCategoriesAvailable => 'Geen categorieën beschikbaar';

  @override
  String get checkBackLaterGenres =>
      'Kom later terug voor genres om te doorbladeren.';

  @override
  String get noMoviesInGenre => 'Nog geen films';

  @override
  String get checkBackSoonGenre =>
      'Momenteel niets in dit genre — kom snel terug.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mijn kijklijst ($count)',
      zero: 'Mijn kijklijst',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'Je kijklijst is leeg';

  @override
  String get watchlistEmptySubtitle =>
      'Films die je opslaat verschijnen hier, zodat je ze nooit uit het oog verliest.';

  @override
  String removedFromWatchlistSnack(String title) {
    return '\"$title\" verwijderd';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Favorieten ($count)',
      zero: 'Favorieten',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'Nog geen favorieten';

  @override
  String get favoritesEmptySubtitle =>
      'Films die je als favoriet markeert, verschijnen hier.';

  @override
  String removedFromFavoritesSnack(String title) {
    return '\"$title\" verwijderd uit favorieten';
  }

  @override
  String get undo => 'ONGEDAAN MAKEN';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get genericErrorSubtitle =>
      'Er is een probleem opgetreden bij het laden. Probeer het opnieuw.';

  @override
  String get noInternetSubtitle =>
      'Controleer je verbinding en probeer het opnieuw.';

  @override
  String get profileTitle => 'Profiel';

  @override
  String get yourLibrary => 'Jouw bibliotheek';

  @override
  String get everythingSaved => 'Alles wat je hebt opgeslagen, op één plek';

  @override
  String get favoritesLabel => 'Favorieten';

  @override
  String get watchlistLabel => 'Kijklijst';

  @override
  String get settingsLabel => 'Instellingen';

  @override
  String get settingsSubtitle => 'Thema, taal en over';

  @override
  String get settingsTitle => 'Instellingen';

  @override
  String get appearance => 'Uiterlijk';

  @override
  String get preferences => 'Voorkeuren';

  @override
  String get languageLabel => 'Taal';

  @override
  String get aboutSection => 'Over';

  @override
  String get aboutThisApp => 'Over deze app';

  @override
  String versionLabel(String version) {
    return 'Versie $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return 'Over $appName';
  }

  @override
  String get aboutDescription =>
      'Een premium filmontdekkings-app — blader door trending, populaire en best beoordeelde titels, zoek en houd bij wat je wilt zien.';

  @override
  String get tmdbAttribution =>
      'Dit product gebruikt de TMDB API maar wordt niet ondersteund of gecertificeerd door TMDB.';

  @override
  String get visitTmdb => 'Bezoek TMDB';

  @override
  String get close => 'Sluiten';

  @override
  String get comingSoon => 'Binnenkort beschikbaar';

  @override
  String get themeLight => 'Licht';

  @override
  String get themeDark => 'Donker';

  @override
  String get themeAuto => 'Auto';

  @override
  String get cancel => 'Annuleren';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get removeLabel => 'Verwijderen';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — bekijk de trailer: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Bekijk \"$title\" op Movies!';
  }

  @override
  String get notificationsLabel => 'Meldingen';

  @override
  String get notificationsSubtitle => 'Beheer je meldingen';

  @override
  String get helpCenterLabel => 'Helpcentrum';

  @override
  String get helpCenterSubtitle => 'Veelgestelde vragen, contact en meer';

  @override
  String get systemDefault => 'Systeemstandaard';

  @override
  String get back => 'Terug';

  @override
  String get clear => 'Wissen';

  @override
  String get editInformation => 'Informatie bewerken';

  @override
  String get save => 'Opslaan';

  @override
  String get displayName => 'Weergavenaam';

  @override
  String get photoUrl => 'Foto-URL';

  @override
  String get enterName => 'Voer je naam in';

  @override
  String get profileUpdated => 'Profiel succesvol bijgewerkt';

  @override
  String get signIn => 'Inloggen';

  @override
  String get signUp => 'Registreren';

  @override
  String get welcomeBack => 'Welkom terug';

  @override
  String get signInSubtitle =>
      'Log in om je kijklijst en favorieten op al je apparaten te synchroniseren.';

  @override
  String get createAccount => 'Account aanmaken';

  @override
  String get signUpSubtitle =>
      'Registreer je om je kijklijst en favorieten in je account op te slaan.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get passwordLabel => 'Wachtwoord';

  @override
  String get confirmPasswordLabel => 'Wachtwoord bevestigen';

  @override
  String get nameLabel => 'Naam';

  @override
  String get forgotPassword => 'Wachtwoord vergeten?';

  @override
  String get noAccountYet => 'Nog geen account? ';

  @override
  String get alreadyHaveAccount => 'Heb je al een account? ';

  @override
  String get continueAsGuest => 'Doorgaan als gast';

  @override
  String get authErrorFieldRequired => 'Dit veld is verplicht.';

  @override
  String get authErrorInvalidEmail => 'Voer een geldig e-mailadres in.';

  @override
  String get authErrorUserDisabled => 'Dit account is uitgeschakeld.';

  @override
  String get authErrorUserNotFound =>
      'Geen account gevonden met dit e-mailadres.';

  @override
  String get authErrorWrongPassword => 'Onjuist e-mailadres of wachtwoord.';

  @override
  String get authErrorEmailInUse =>
      'Er bestaat al een account met dit e-mailadres.';

  @override
  String get authErrorWeakPassword => 'Het wachtwoord is te zwak.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'Wachtwoord moet minimaal $minLength tekens lang zijn.';
  }

  @override
  String get authErrorTooManyRequests =>
      'Te veel pogingen. Wacht even en probeer het opnieuw.';

  @override
  String get authErrorNotConfigured =>
      'Inloggen is nog niet ingesteld voor deze app.';

  @override
  String get authErrorRequiresRecentLogin => 'Log opnieuw in om door te gaan.';

  @override
  String get authErrorPasswordMismatch => 'Wachtwoorden komen niet overeen.';

  @override
  String get authEnterEmailFirst => 'Voer hierboven eerst je e-mailadres in.';

  @override
  String authResetEmailSent(String email) {
    return 'E-mail voor wachtwoordherstel verzonden naar $email.';
  }

  @override
  String get authSyncBannerTitle => 'Log in om te synchroniseren';

  @override
  String get authSyncBannerSubtitle =>
      'Sla je kijklijst en favorieten op in je account en bekijk ze op elk apparaat.';

  @override
  String get signOut => 'Uitloggen';

  @override
  String get signOutConfirmTitle => 'Uitloggen?';

  @override
  String get signOutConfirmMessage =>
      'Je kunt op elk moment weer inloggen. Je kijklijst en favorieten blijven bewaard in je account.';

  @override
  String get signedOutSnack => 'Uitgelogd';

  @override
  String get guestBadge => 'Gast';

  @override
  String get syncedToAccount => 'Gesynchroniseerd met je account';

  @override
  String get localOnlyBanner =>
      'Alleen op dit apparaat opgeslagen — log in om te synchroniseren';

  @override
  String get editProfile => 'Profiel bewerken';

  @override
  String get photoUrlLabel => 'Foto-URL';

  @override
  String get photoUrlFieldHint => 'https://example.com/photo.jpg';

  @override
  String get photoUrlHint =>
      'Plak een link naar een afbeelding. Laat leeg om je foto te verwijderen.';

  @override
  String get invalidUrlError =>
      'Voer een geldige afbeeldings-URL in die begint met http:// of https://.';

  @override
  String get saveChanges => 'Wijzigingen opslaan';

  @override
  String get profileUpdatedSnack => 'Profiel bijgewerkt';

  @override
  String get deleteAccountAction => 'Account verwijderen';

  @override
  String get deleteAccountConfirmTitle => 'Account verwijderen?';

  @override
  String get deleteAccountConfirmMessage =>
      'Dit verwijdert je account en inloggegevens definitief. Je kijklijst en favorieten blijven op dit apparaat maar worden niet meer gesynchroniseerd. Dit kan niet ongedaan worden gemaakt.';

  @override
  String get accountDeletedSnack => 'Account verwijderd';

  @override
  String get chatbotEntrySubtitle =>
      'Krijg snel antwoord van onze FAQ-assistent';

  @override
  String get faqEntrySubtitle => 'Bekijk veelgestelde vragen en antwoorden';

  @override
  String get contactUsEntrySubtitle => 'Stuur ons een bericht';

  @override
  String get feedbackEntrySubtitle =>
      'Beoordeel de app en vertel ons wat je vindt';

  @override
  String get aboutEntrySubtitle => 'Versie, credits en juridisch';

  @override
  String get chatbotTitle => 'Help-assistent';

  @override
  String get chatbotGreeting =>
      'Hoi! Vraag me alles over het gebruik van de app — ik doe mijn best om te helpen.';

  @override
  String get chatbotInputHint => 'Typ je vraag…';

  @override
  String get chatbotNoMatch =>
      'Dat weet ik niet zeker. Probeer het anders te formuleren, bekijk de FAQ of neem contact op.';

  @override
  String get chatbotContactHumanPrompt =>
      'Een echt persoon nodig? Neem contact op';

  @override
  String get faqTitle => 'Veelgestelde vragen';

  @override
  String get faqSearchHint => 'Zoeken in de FAQ…';

  @override
  String get faqNoResultsSubtitle =>
      'Probeer een andere zoekterm of vraag het aan onze assistent.';

  @override
  String get faqQAboutApp => 'Wat is deze app?';

  @override
  String get faqAAboutApp =>
      'MOVIES is een app om films te ontdekken — blader door trending, populaire titels, zoek en houd bij wat je wilt zien.';

  @override
  String get faqQSearch => 'Hoe zoek ik naar een film?';

  @override
  String get faqASearch =>
      'Tik op Zoeken in het menu onderaan, typ een titel, acteur of genre. De resultaten verschijnen direct.';

  @override
  String get faqQWatchlistVsFavorites =>
      'Wat is het verschil tussen Kijklijst en Favorieten?';

  @override
  String get faqAWatchlistVsFavorites =>
      'De Kijklijst is voor films die je nog wilt zien. Favorieten voor films waar je al van houdt.';

  @override
  String get faqQSaveMovie => 'Hoe sla ik een film op?';

  @override
  String get faqASaveMovie =>
      'Tik op het bladwijzer-icoon op een filmkaart of gebruik de knoppen op de detailpagina.';

  @override
  String get faqQNeedAccount => 'Heb ik een account nodig voor de app?';

  @override
  String get faqANeedAccount =>
      'Nee — alles werkt ook als gast. Inloggen zorgt voor synchronisatie tussen apparaten.';

  @override
  String get faqQSignIn => 'Hoe log ik in of maak ik een account?';

  @override
  String get faqASignIn =>
      'Ga naar Profiel en tik op de inlogbanner. Registreren kan met naam, e-mail en wachtwoord.';

  @override
  String get faqQSyncDevices => 'Hoe werkt synchronisatie tussen apparaten?';

  @override
  String get faqASyncDevices =>
      'Als je bent ingelogd, worden je gegevens automatisch en in realtime gesynchroniseerd op al je apparaten.';

  @override
  String get faqQOffline => 'Werkt de app offline?';

  @override
  String get faqAOffline =>
      'Je kijklijst en favorieten zijn offline beschikbaar. Voor het zoeken naar nieuwe films is internet nodig.';

  @override
  String get faqQChangeLanguage => 'Hoe verander ik de taal?';

  @override
  String get faqAChangeLanguage =>
      'Ga naar Instellingen → Taal en kies uit de 12 talen, of kies Systeemstandaard.';

  @override
  String get faqQChangeTheme => 'Hoe wissel ik tussen licht en donker?';

  @override
  String get faqAChangeTheme =>
      'Ga naar Instellingen → Uiterlijk en kies Licht, Donker of Auto.';

  @override
  String get faqQWatchTrailer => 'Hoe bekijk ik een trailer?';

  @override
  String get faqAWatchTrailer =>
      'Open de detailpagina en tik op Trailer bekijken. Deze opent in YouTube indien beschikbaar.';

  @override
  String get faqQDeleteAccount => 'Hoe verwijder ik mijn account?';

  @override
  String get faqADeleteAccount =>
      'Ga naar Profiel → Profiel bewerken en kies Account verwijderen. Je clouddata wordt definitief gewist.';

  @override
  String get faqQContactSupport => 'Hoe neem ik contact op met support?';

  @override
  String get faqAContactSupport =>
      'Ga naar Helpcentrum → Contact en stuur een bericht; je e-mail-app opent automatisch.';

  @override
  String get contactUsTitle => 'Contact';

  @override
  String get contactUsSubtitle =>
      'Heb je een vraag of probleem? Stuur ons een bericht en we komen bij je terug.';

  @override
  String get contactSubjectLabel => 'Onderwerp';

  @override
  String get contactMessageLabel => 'Bericht';

  @override
  String get contactSendAction => 'Bericht verzenden';

  @override
  String get contactMailAppUnavailable =>
      'Geen e-mail-app gevonden op dit apparaat.';

  @override
  String contactEmailBodyTemplate(String name, String email, String message) {
    return 'Naam: $name\nE-mail: $email\n\n$message';
  }

  @override
  String get feedbackTitle => 'Feedback';

  @override
  String get feedbackSubtitle => 'Wat is je ervaring met de app tot nu toe?';

  @override
  String get feedbackCommentHint => 'Vertel ons meer (optioneel)…';

  @override
  String get feedbackSendAction => 'Feedback verzenden';

  @override
  String get feedbackRatingRequired => 'Selecteer eerst een aantal sterren.';

  @override
  String get feedbackThanks => 'Bedankt voor je feedback!';

  @override
  String get feedbackNoComment => '(Geen opmerking geplaatst)';

  @override
  String get feedbackEmailSubject => 'App Feedback';

  @override
  String feedbackEmailBodyTemplate(int rating, String comment) {
    return 'Beoordeling: $rating/5\n\n$comment';
  }

  @override
  String get termsTitle => 'Gebruiksvoorwaarden';

  @override
  String get privacyTitle => 'Privacybeleid';

  @override
  String get legalLastUpdated => 'Laatst bijgewerkt: januari 2026';

  @override
  String get termsSection1Title => '1. Acceptatie van voorwaarden';

  @override
  String get termsSection1Body =>
      'Door deze app te gebruiken, ga je akkoord met deze voorwaarden. Als je niet akkoord gaat, gebruik de app dan niet.';

  @override
  String get termsSection2Title => '2. De dienst';

  @override
  String get termsSection2Body =>
      'Deze app biedt filminformatie van TMDB. We hosten of streamen zelf geen video-inhoud.';

  @override
  String get termsSection3Title => '3. Accounts';

  @override
  String get termsSection3Body =>
      'Gastgebruik is mogelijk. Een account maakt synchronisatie mogelijk. Je bent zelf verantwoordelijk voor je wachtwoord.';

  @override
  String get termsSection4Title => '4. Jouw inhoud';

  @override
  String get termsSection4Body =>
      'Jouw gegevens zijn van jou. We slaan ze op voor de dienst en verkopen ze niet.';

  @override
  String get termsSection5Title => '5. Gegevens van derden';

  @override
  String get termsSection5Body =>
      'Informatie komt van TMDB en kan variëren. De app gebruikt de API maar is niet gecertificeerd door TMDB.';

  @override
  String get termsSection6Title => '6. Beëindiging';

  @override
  String get termsSection6Body =>
      'Je kunt je account op elk moment verwijderen. Bij misbruik kunnen we de toegang blokkeren.';

  @override
  String get termsSection7Title => '7. Wijzigingen';

  @override
  String get termsSection7Body =>
      'We kunnen deze voorwaarden bijwerken. Doorgaan met gebruik betekent acceptatie.';

  @override
  String get privacySection1Title => '1. Wat we verzamelen';

  @override
  String get privacySection1Body =>
      'Als gast verzamelen we geen persoonlijke data. Met account: naam, e-mail en optionele foto.';

  @override
  String get privacySection2Title => '2. Kijklijst en favorieten';

  @override
  String get privacySection2Body =>
      'Veilig opgeslagen in Firestore en alleen voor jou toegankelijk.';

  @override
  String get privacySection3Title => '3. Diensten van derden';

  @override
  String get privacySection3Body =>
      'TMDB voor film-info en Firebase voor data. Zij hebben hun eigen privacybeleid.';

  @override
  String get privacySection4Title => '4. Lokale opslag';

  @override
  String get privacySection4Body =>
      'Je voorkeuren worden lokaal opgeslagen via Hive voor een snelle werking.';

  @override
  String get privacySection5Title => '5. Gegevensverwijdering';

  @override
  String get privacySection5Body =>
      'Account verwijderen wist clouddata. Lokale data blijft tot het wissen van de app-cache.';

  @override
  String get privacySection6Title => '6. Contact';

  @override
  String get privacySection6Body =>
      'Vragen? Neem contact op via het Helpcentrum.';
}
