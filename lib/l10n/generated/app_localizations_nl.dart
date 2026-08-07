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
  String get noReviewsYet =>
      'No reviews yet — be the first to share your thoughts.';

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
  String get confirm => 'Confirm';

  @override
  String get cancel => 'Annuleren';

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
}
