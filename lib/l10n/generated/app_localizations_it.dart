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
      'Ancora nessuna recensione — sii il primo a condividere la tua opinione.';

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
  String get cancel => 'Annulla';

  @override
  String get confirm => 'Conferma';

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

  @override
  String get back => 'Indietro';

  @override
  String get clear => 'Cancella';

  @override
  String get editInformation => 'Modifica informazioni';

  @override
  String get save => 'Salva';

  @override
  String get displayName => 'Nome visualizzato';

  @override
  String get photoUrl => 'URL foto';

  @override
  String get photoUrlHint => 'https://example.com/avatar.jpg';

  @override
  String get enterName => 'Inserisci il tuo nome';

  @override
  String get profileUpdated => 'Profilo aggiornato con successo';

  @override
  String get signIn => 'Accedi';

  @override
  String get signUp => 'Registrati';

  @override
  String get welcomeBack => 'Bentornato';

  @override
  String get signInSubtitle =>
      'Accedi per sincronizzare la tua lista e i preferiti tra i dispositivi.';

  @override
  String get createAccount => 'Crea account';

  @override
  String get signUpSubtitle =>
      'Registrati per salvare la tua lista e i preferiti nel tuo account.';

  @override
  String get emailLabel => 'Email';

  @override
  String get passwordLabel => 'Password';

  @override
  String get confirmPasswordLabel => 'Conferma password';

  @override
  String get nameLabel => 'Nome';

  @override
  String get forgotPassword => 'Password dimenticata?';

  @override
  String get noAccountYet => 'Non hai un account? ';

  @override
  String get alreadyHaveAccount => 'Hai già un account? ';

  @override
  String get continueAsGuest => 'Continua come ospite';

  @override
  String get authErrorFieldRequired => 'Questo campo è obbligatorio.';

  @override
  String get authErrorInvalidEmail => 'Inserisci un indirizzo email valido.';

  @override
  String get authErrorUserDisabled => 'Questo account è stato disabilitato.';

  @override
  String get authErrorUserNotFound =>
      'Nessun account trovato con questa email.';

  @override
  String get authErrorWrongPassword => 'Email o password errati.';

  @override
  String get authErrorEmailInUse => 'Esiste già un account con questa email.';

  @override
  String get authErrorWeakPassword => 'Questa password è troppo debole.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'La password deve contenere almeno $minLength caratteri.';
  }

  @override
  String get authErrorTooManyRequests =>
      'Troppi tentativi. Attendi un momento e riprova.';

  @override
  String get authErrorNotConfigured =>
      'L\'accesso non è ancora configurato per questa app.';

  @override
  String get authErrorRequiresRecentLogin =>
      'Effettua di nuovo l\'accesso per continuare.';

  @override
  String get authErrorPasswordMismatch => 'Le password non corrispondono.';

  @override
  String get authEnterEmailFirst => 'Inserisci prima la tua email qui sopra.';

  @override
  String authResetEmailSent(String email) {
    return 'Email per il reset della password inviata a $email.';
  }

  @override
  String get authSyncBannerTitle => 'Accedi per sincronizzare';

  @override
  String get authSyncBannerSubtitle =>
      'Salva la tua lista e i preferiti nel tuo account e accedi da qualsiasi dispositivo.';

  @override
  String get signOut => 'Esci';

  @override
  String get signOutConfirmTitle => 'Uscire?';

  @override
  String get signOutConfirmMessage =>
      'Potrai accedere di nuovo in qualsiasi momento. La tua lista e i preferiti resteranno salvati nel tuo account.';

  @override
  String get signedOutSnack => 'Disconnesso';

  @override
  String get guestBadge => 'Ospite';

  @override
  String get syncedToAccount => 'Sincronizzato con il tuo account';

  @override
  String get localOnlyBanner =>
      'Salvato solo su questo dispositivo — accedi per sincronizzare tra dispositivi';
}
