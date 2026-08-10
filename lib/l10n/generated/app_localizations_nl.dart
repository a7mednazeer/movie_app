// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTagline => 'JOUW WERELD VAN FILM';

  @override
  String get navHome => 'Home';

  @override
  String get navSearch => 'Zoeken';

  @override
  String get navBrowse => 'Ontdekken';

  @override
  String get navWatchlist => 'Kijklijst';

  @override
  String get navProfile => 'Profiel';

  @override
  String get sectionTrending => 'Trending Nu';

  @override
  String get sectionPopular => 'Populaire Films';

  @override
  String get sectionTopRated => 'Best Beoordeeld';

  @override
  String get sectionUpcoming => 'Binnenkort';

  @override
  String get sectionRecommended => 'Aanbevolen Voor Jou';

  @override
  String get sectionCategories => 'Categorieën';

  @override
  String get seeAll => 'Alles Bekijken';

  @override
  String get moreLikeThis => 'Meer Zoals Dit';

  @override
  String get cast => 'Cast';

  @override
  String get reviews => 'Recensies';

  @override
  String get noReviewsYet => 'Nog geen recensies — deel als eerste je mening.';

  @override
  String get overview => 'Overzicht';

  @override
  String get watchTrailer => 'Bekijk Trailer';

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
  String get readMore => 'Meer lezen';

  @override
  String get readLess => 'Minder lezen';

  @override
  String get searchHint => 'Zoek films, acteurs, genres…';

  @override
  String get recentSearches => 'Recente Zoekopdrachten';

  @override
  String get trendingSearches => 'Populaire Zoekopdrachten';

  @override
  String get clearAll => 'Alles Wissen';

  @override
  String get clearRecentSearchesMessage =>
      'Alle recente zoekopdrachten verwijderen? Dit kan niet ongedaan worden gemaakt.';

  @override
  String get noResultsFound => 'Geen films gevonden';

  @override
  String get noResultsSubtitle => 'Probeer een andere titel, acteur of genre.';

  @override
  String get startSearching => 'Zoek je favoriete films';

  @override
  String get startSearchingSubtitle =>
      'Vind titels, bekijk de cast en ontdek iets nieuws.';

  @override
  String get browseCategory => 'Categorieën Ontdekken';

  @override
  String get noCategoriesAvailable => 'Geen categorieën beschikbaar';

  @override
  String get checkBackLaterGenres => 'Kom later terug voor beschikbare genres.';

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
      other: 'Mijn Kijklijst ($count)',
      zero: 'Mijn Kijklijst',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'Je kijklijst is leeg';

  @override
  String get watchlistEmptySubtitle =>
      'Films die je opslaat, verschijnen hier zodat je ze nooit uit het oog verliest.';

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
      'Films die je als favoriet markeert via de filmdetails, verschijnen hier.';

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
      'Er ging iets mis bij het laden van deze inhoud. Probeer het opnieuw.';

  @override
  String get noInternetSubtitle =>
      'Controleer je verbinding en probeer het opnieuw.';

  @override
  String get profileTitle => 'Profiel';

  @override
  String get yourLibrary => 'Jouw Bibliotheek';

  @override
  String get everythingSaved => 'Alles wat je hebt opgeslagen, op één plek';

  @override
  String get favoritesLabel => 'Favorieten';

  @override
  String get watchlistLabel => 'Kijklijst';

  @override
  String get settingsLabel => 'Instellingen';

  @override
  String get settingsSubtitle => 'Thema, taal en meer';

  @override
  String get settingsTitle => 'Instellingen';

  @override
  String get appearance => 'Weergave';

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
      'Een premium app om films te ontdekken: bekijk trending, populaire en best beoordeelde titels, zoek en houd bij wat je wilt kijken.';

  @override
  String get tmdbAttribution =>
      'Dit product gebruikt de TMDB API, maar wordt niet onderschreven of gecertificeerd door TMDB.';

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
  String get themeAuto => 'Automatisch';

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
  String get notificationsSubtitle => 'Beheer waarover je meldingen krijgt';

  @override
  String get helpCenterLabel => 'Helpcentrum';

  @override
  String get helpCenterSubtitle => 'Veelgestelde vragen, contact en meer';

  @override
  String get systemDefault => 'Systeeminstelling';

  @override
  String get back => 'Terug';

  @override
  String get clear => 'Wissen';

  @override
  String get editInformation => 'Informatie bewerken';

  @override
  String get save => 'Opslaan';

  @override
  String get displayName => 'Weergavename';

  @override
  String get photoUrl => 'Foto-URL';

  @override
  String get pphotoUrlHint => 'https://example.com/avatar.jpg';

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
      'Log in om je kijklijst en favorieten tussen apparaten te synchroniseren.';

  @override
  String get createAccount => 'Account aanmaken';

  @override
  String get signUpSubtitle =>
      'Registreer om je kijklijst en favorieten in je account op te slaan.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get passwordLabel => 'Wachtwoord';

  @override
  String get confirmPasswordLabel => 'Bevestig wachtwoord';

  @override
  String get nameLabel => 'Naam';

  @override
  String get forgotPassword => 'Wachtwoord vergeten?';

  @override
  String get noAccountYet => 'Nog geen account? ';

  @override
  String get alreadyHaveAccount => 'Al een account? ';

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
      'Geen account gevonden met dat e-mailadres.';

  @override
  String get authErrorWrongPassword => 'Onjuiste e-mail of wachtwoord.';

  @override
  String get authErrorEmailInUse =>
      'Er bestaat al een account met dat e-mailadres.';

  @override
  String get authErrorWeakPassword => 'Dat wachtwoord is te zwak.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'Wachtwoord moet minstens $minLength tekens bevatten.';
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
  String get authEnterEmailFirst => 'Vul hierboven eerst je e-mailadres in.';

  @override
  String authResetEmailSent(String email) {
    return 'E-mail voor wachtwoordherstel verzonden naar $email.';
  }

  @override
  String get authSyncBannerTitle => 'Log in om te synchroniseren';

  @override
  String get authSyncBannerSubtitle =>
      'Sla je kijklijst en favorieten op in je account en gebruik ze op elk apparaat.';

  @override
  String get signOut => 'Uitloggen';

  @override
  String get signOutConfirmTitle => 'Uitloggen?';

  @override
  String get signOutConfirmMessage =>
      'Je kunt altijd opnieuw inloggen. Je kijklijst en favorieten blijven opgeslagen in je account.';

  @override
  String get signedOutSnack => 'Uitgelogd';

  @override
  String get guestBadge => 'Gast';

  @override
  String get syncedToAccount => 'Gesynchroniseerd met je account';

  @override
  String get localOnlyBanner =>
      'Alleen op dit apparaat opgeslagen — log in om te synchroniseren tussen apparaten';

  @override
  String get editProfile => 'Profiel Bewerken';

  @override
  String get photoUrlLabel => 'Foto-URL';

  @override
  String get photoUrlHint =>
      'Plak een link naar een afbeelding. Laat leeg om je foto te verwijderen.';

  @override
  String get invalidUrlError =>
      'Voer een geldige afbeeldings-URL in die begint met http:// of https://.';

  @override
  String get saveChanges => 'Wijzigingen Opslaan';

  @override
  String get profileUpdatedSnack => 'Profiel bijgewerkt';

  @override
  String get deleteAccountAction => 'Account Verwijderen';

  @override
  String get deleteAccountConfirmTitle => 'Je account verwijderen?';

  @override
  String get deleteAccountConfirmMessage =>
      'Dit verwijdert je account en inloggegevens permanent. Je kijklijst en favorieten blijven op dit apparaat staan, maar worden nergens meer gesynchroniseerd. Dit kan niet ongedaan worden gemaakt.';

  @override
  String get accountDeletedSnack => 'Account verwijderd';
}
