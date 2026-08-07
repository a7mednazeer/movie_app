// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTagline => 'IL TUO MONDO DEL CINEMA';

  @override
  String get navHome => 'Home';

  @override
  String get navSearch => 'Cerca';

  @override
  String get navBrowse => 'Esplora';

  @override
  String get navWatchlist => 'Lista';

  @override
  String get navProfile => 'Profilo';

  @override
  String get sectionTrending => 'Di tendenza';

  @override
  String get sectionPopular => 'Film popolari';

  @override
  String get sectionTopRated => 'I più votati';

  @override
  String get sectionUpcoming => 'In arrivo';

  @override
  String get sectionRecommended => 'Consigliati per te';

  @override
  String get sectionCategories => 'Categorie';

  @override
  String get seeAll => 'Vedi tutti';

  @override
  String get moreLikeThis => 'Film simili';

  @override
  String get cast => 'Cast';

  @override
  String get reviews => 'Recensioni';

  @override
  String get noReviewsYet =>
      'No reviews yet — be the first to share your thoughts.';

  @override
  String get overview => 'Trama';

  @override
  String get watchTrailer => 'Guarda il trailer';

  @override
  String get noTrailerAvailable =>
      'Nessun trailer disponibile per questo titolo al momento.';

  @override
  String get trailerOpenFailed => 'Impossibile aprire il trailer.';

  @override
  String get addToWatchlist => 'Lista';

  @override
  String get removedFromWatchlist => 'Rimosso dalla lista';

  @override
  String get addedToWatchlist => 'Aggiunto alla lista';

  @override
  String get share => 'Condividi';

  @override
  String get readMore => 'Leggi di più';

  @override
  String get readLess => 'Leggi meno';

  @override
  String get searchHint => 'Cerca film, attori, generi…';

  @override
  String get recentSearches => 'Ricerche recenti';

  @override
  String get trendingSearches => 'Ricerche di tendenza';

  @override
  String get clearAll => 'Cancella tutto';

  @override
  String get clearRecentSearchesMessage =>
      'Rimuovere tutte le ricerche recenti? L\'operazione non può essere annullata.';

  @override
  String get noResultsFound => 'Nessun film trovato';

  @override
  String get noResultsSubtitle => 'Prova con un altro titolo, attore o genere.';

  @override
  String get startSearching => 'Cerca i tuoi film preferiti';

  @override
  String get startSearchingSubtitle =>
      'Trova titoli, esplora il cast e scopri qualcosa di nuovo.';

  @override
  String get browseCategory => 'Esplora le categorie';

  @override
  String get noCategoriesAvailable => 'Nessuna categoria disponibile';

  @override
  String get checkBackLaterGenres =>
      'Torna più tardi per i generi disponibili.';

  @override
  String get noMoviesInGenre => 'Ancora nessun film';

  @override
  String get checkBackSoonGenre =>
      'Al momento non c\'è nulla in questo genere — torna presto.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'La mia lista ($count)',
      zero: 'La mia lista',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'La tua lista è vuota';

  @override
  String get watchlistEmptySubtitle =>
      'I film che salvi appariranno qui, così non li perderai mai di vista.';

  @override
  String removedFromWatchlistSnack(String title) {
    return '\"$title\" rimosso';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Preferiti ($count)',
      zero: 'Preferiti',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'Ancora nessun preferito';

  @override
  String get favoritesEmptySubtitle =>
      'I film che segni come preferiti dai dettagli appariranno qui.';

  @override
  String removedFromFavoritesSnack(String title) {
    return '\"$title\" rimosso dai preferiti';
  }

  @override
  String get undo => 'ANNULLA';

  @override
  String get retry => 'Riprova';

  @override
  String get genericErrorSubtitle =>
      'Si è verificato un problema nel caricamento. Riprova.';

  @override
  String get noInternetSubtitle => 'Controlla la connessione e riprova.';

  @override
  String get profileTitle => 'Profilo';

  @override
  String get yourLibrary => 'La tua libreria';

  @override
  String get everythingSaved => 'Tutto ciò che hai salvato, in un unico posto';

  @override
  String get favoritesLabel => 'Preferiti';

  @override
  String get watchlistLabel => 'Lista';

  @override
  String get settingsLabel => 'Impostazioni';

  @override
  String get settingsSubtitle => 'Tema, lingua e altro';

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get appearance => 'Aspetto';

  @override
  String get preferences => 'Preferenze';

  @override
  String get languageLabel => 'Lingua';

  @override
  String get aboutSection => 'Informazioni';

  @override
  String get aboutThisApp => 'Informazioni sull\'app';

  @override
  String versionLabel(String version) {
    return 'Versione $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return 'Informazioni su $appName';
  }

  @override
  String get aboutDescription =>
      'Un\'app premium per scoprire film: esplora tendenze, popolari e i più votati, cerca e tieni traccia di ciò che vuoi vedere.';

  @override
  String get tmdbAttribution =>
      'Questo prodotto utilizza le API di TMDB, ma non è approvato né certificato da TMDB.';

  @override
  String get visitTmdb => 'Visita TMDB';

  @override
  String get close => 'Chiudi';

  @override
  String get comingSoon => 'Prossimamente';

  @override
  String get themeLight => 'Chiaro';

  @override
  String get themeDark => 'Scuro';

  @override
  String get themeAuto => 'Automatico';

  @override
  String get confirm => 'Confirm';

  @override
  String get cancel => 'Annulla';

  @override
  String get removeLabel => 'Rimuovi';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — guarda il trailer: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Guarda \"$title\" su Movies!';
  }

  @override
  String get notificationsLabel => 'Notifiche';

  @override
  String get notificationsSubtitle => 'Gestisci di cosa vuoi essere avvisato';

  @override
  String get helpCenterLabel => 'Centro assistenza';

  @override
  String get helpCenterSubtitle => 'FAQ, contatti e altro';

  @override
  String get systemDefault => 'Predefinito di sistema';
}
