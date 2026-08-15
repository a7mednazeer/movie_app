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
  String get navBrowse => 'Sfoglia';

  @override
  String get navWatchlist => 'Watchlist';

  @override
  String get navProfile => 'Profilo';

  @override
  String get sectionTrending => 'Tendenze';

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
  String get seeAll => 'Vedi tutto';

  @override
  String get moreLikeThis => 'Altri titoli simili';

  @override
  String get cast => 'Cast';

  @override
  String get reviews => 'Recensioni';

  @override
  String get noReviewsYet => 'Ancora nessuna recensione — scrivi tu la prima.';

  @override
  String get overview => 'Sinossi';

  @override
  String get watchTrailer => 'Guarda il trailer';

  @override
  String get noTrailerAvailable =>
      'Nessun trailer disponibile per questo titolo.';

  @override
  String get trailerOpenFailed => 'Impossibile aprire il trailer.';

  @override
  String get addToWatchlist => 'Watchlist';

  @override
  String get removedFromWatchlist => 'Rimosso dalla watchlist';

  @override
  String get addedToWatchlist => 'Aggiunto alla watchlist';

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
      'Vuoi rimuovere tutte le ricerche recenti? L\'azione è irreversibile.';

  @override
  String get noResultsFound => 'Nessun film trovato';

  @override
  String get noResultsSubtitle =>
      'Prova con un titolo, un attore o un genere diverso.';

  @override
  String get startSearching => 'Cerca i tuoi film preferiti';

  @override
  String get startSearchingSubtitle =>
      'Trova titoli, esplora il cast e scopri novità.';

  @override
  String get browseCategory => 'Sfoglia categoria';

  @override
  String get noCategoriesAvailable => 'Nessuna categoria disponibile';

  @override
  String get checkBackLaterGenres => 'Torna più tardi per sfogliare i generi.';

  @override
  String get noMoviesInGenre => 'Ancora nessun film';

  @override
  String get checkBackSoonGenre =>
      'Niente in questo genere per ora — torna presto.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Watchlist ($count)',
      zero: 'Watchlist',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'La tua watchlist è vuota';

  @override
  String get watchlistEmptySubtitle =>
      'I film che salvi appariranno qui per non perderli mai di vista.';

  @override
  String removedFromWatchlistSnack(String title) {
    return 'Rimosso \"$title\"';
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
      'I film che aggiungi ai preferiti appariranno qui.';

  @override
  String removedFromFavoritesSnack(String title) {
    return 'Rimosso \"$title\" dai preferiti';
  }

  @override
  String get undo => 'ANNULLA';

  @override
  String get retry => 'Riprova';

  @override
  String get genericErrorSubtitle =>
      'Si è verificato un errore nel caricamento. Riprova.';

  @override
  String get noInternetSubtitle => 'Controlla la tua connessione e riprova.';

  @override
  String get profileTitle => 'Profilo';

  @override
  String get yourLibrary => 'La tua libreria';

  @override
  String get everythingSaved => 'Tutto ciò che hai salvato, in un unico posto';

  @override
  String get favoritesLabel => 'Preferiti';

  @override
  String get watchlistLabel => 'Watchlist';

  @override
  String get settingsLabel => 'Impostazioni';

  @override
  String get settingsSubtitle => 'Tema, lingua e informazioni';

  @override
  String get settingsTitle => 'Impostazioni';

  @override
  String get appearance => 'Aspetto';

  @override
  String get preferences => 'Preferenze';

  @override
  String get languageLabel => 'Lingua';

  @override
  String get aboutSection => 'Info';

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
      'Un\'app premium per la scoperta di film — sfoglia titoli di tendenza, popolari e i più votati, cerca e tieni traccia di ciò che vuoi vedere.';

  @override
  String get tmdbAttribution =>
      'Questo prodotto utilizza l\'API TMDB ma non è approvato o certificato da TMDB.';

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
  String get themeAuto => 'Auto';

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
  String get notificationsSubtitle => 'Gestisci le tue notifiche';

  @override
  String get helpCenterLabel => 'Centro assistenza';

  @override
  String get helpCenterSubtitle => 'FAQ, contattaci e altro';

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
      'Accedi per sincronizzare la tua watchlist e i preferiti su tutti i tuoi dispositivi.';

  @override
  String get createAccount => 'Crea account';

  @override
  String get signUpSubtitle =>
      'Registrati per salvare la tua watchlist e i preferiti sul tuo account.';

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
  String get authErrorFieldRequired => 'Campo obbligatorio.';

  @override
  String get authErrorInvalidEmail => 'Inserisci un indirizzo email valido.';

  @override
  String get authErrorUserDisabled => 'Questo account è stato disabilitato.';

  @override
  String get authErrorUserNotFound =>
      'Nessun account trovato con questa email.';

  @override
  String get authErrorWrongPassword => 'Email o password errate.';

  @override
  String get authErrorEmailInUse => 'Esiste già un account con questa email.';

  @override
  String get authErrorWeakPassword => 'La password è troppo debole.';

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
  String get authErrorRequiresRecentLogin => 'Accedi di nuovo per continuare.';

  @override
  String get authErrorPasswordMismatch => 'Le password non corrispondono.';

  @override
  String get authEnterEmailFirst => 'Inserisci prima la tua email qui sopra.';

  @override
  String authResetEmailSent(String email) {
    return 'Email di ripristino password inviata a $email.';
  }

  @override
  String get authSyncBannerTitle => 'Accedi per sincronizzare';

  @override
  String get authSyncBannerSubtitle =>
      'Salva la tua watchlist e i preferiti sul tuo account e accedi da qualsiasi dispositivo.';

  @override
  String get signOut => 'Esci';

  @override
  String get signOutConfirmTitle => 'Vuoi uscire?';

  @override
  String get signOutConfirmMessage =>
      'Puoi rientrare in qualsiasi momento. La tua watchlist e i preferiti rimangono salvati nel tuo account.';

  @override
  String get signedOutSnack => 'Disconnesso';

  @override
  String get guestBadge => 'Ospite';

  @override
  String get syncedToAccount => 'Sincronizzato col tuo account';

  @override
  String get localOnlyBanner =>
      'Salvato solo su questo dispositivo — accedi per sincronizzare';

  @override
  String get editProfile => 'Modifica profilo';

  @override
  String get photoUrlLabel => 'URL foto';

  @override
  String get photoUrlFieldHint => 'https://example.com/photo.jpg';

  @override
  String get photoUrlHint =>
      'Incolla il link a un\'immagine. Lascia vuoto per rimuovere la foto.';

  @override
  String get invalidUrlError =>
      'Inserisci un URL immagine valido che inizi con http:// o https://.';

  @override
  String get saveChanges => 'Salva modifiche';

  @override
  String get profileUpdatedSnack => 'Profilo aggiornato';

  @override
  String get deleteAccountAction => 'Elimina account';

  @override
  String get deleteAccountConfirmTitle => 'Eliminare l\'account?';

  @override
  String get deleteAccountConfirmMessage =>
      'Questo eliminerà permanentemente il tuo account. La tua watchlist e i preferiti rimarranno su questo dispositivo ma non saranno più sincronizzati. L\'azione è irreversibile.';

  @override
  String get accountDeletedSnack => 'Account eliminato';

  @override
  String get chatbotEntrySubtitle =>
      'Risposte rapide dal nostro assistente FAQ';

  @override
  String get faqEntrySubtitle => 'Sfoglia le domande e risposte comuni';

  @override
  String get contactUsEntrySubtitle => 'Inviaci un messaggio';

  @override
  String get feedbackEntrySubtitle => 'Valuta l\'app e dicci cosa ne pensi';

  @override
  String get aboutEntrySubtitle => 'Versione, crediti e note legali';

  @override
  String get chatbotTitle => 'Assistente di aiuto';

  @override
  String get chatbotGreeting =>
      'Ciao! Chiedimi pure qualsiasi cosa sull\'app — farò del mio meglio per aiutarti.';

  @override
  String get chatbotInputHint => 'Scrivi la tua domanda…';

  @override
  String get chatbotNoMatch =>
      'Non ne sono sicuro. Prova a riformulare, consulta le FAQ o contattaci per parlare con una persona reale.';

  @override
  String get chatbotContactHumanPrompt => 'Serve aiuto umano? Contattaci';

  @override
  String get faqTitle => 'Domande frequenti';

  @override
  String get faqSearchHint => 'Cerca nelle FAQ…';

  @override
  String get faqNoResultsSubtitle =>
      'Prova con un altro termine o chiedi al nostro assistente.';

  @override
  String get faqQAboutApp => 'Cos\'è questa app?';

  @override
  String get faqAAboutApp =>
      'MOVIES è un\'app per scoprire film — sfoglia titoli di tendenza, popolari, i più votati, cerca quello che vuoi e tieni traccia di cosa vedere.';

  @override
  String get faqQSearch => 'Come cerco un film?';

  @override
  String get faqASearch =>
      'Tocca Cerca nel menu in basso, poi scrivi un titolo, attore o genere. I risultati si aggiornano mentre scrivi.';

  @override
  String get faqQWatchlistVsFavorites =>
      'Che differenza c\'è tra Watchlist e Preferiti?';

  @override
  String get faqAWatchlistVsFavorites =>
      'La Watchlist è per i film che vuoi vedere. I Preferiti per quelli che ami già. Sono liste separate.';

  @override
  String get faqQSaveMovie => 'Come salvo un film?';

  @override
  String get faqASaveMovie =>
      'Tocca l\'icona del segnalibro su qualsiasi film o usa i pulsanti nella pagina dei dettagli.';

  @override
  String get faqQNeedAccount => 'Serve un account per usare l\'app?';

  @override
  String get faqANeedAccount =>
      'No — tutto funziona come ospite. L\'accesso serve per la sincronizzazione tra dispositivi.';

  @override
  String get faqQSignIn => 'Come accedo o creo un account?';

  @override
  String get faqASignIn =>
      'Vai su Profilo e tocca il banner di accesso. Servono solo nome, email e password.';

  @override
  String get faqQSyncDevices => 'Come funziona la sincronizzazione?';

  @override
  String get faqASyncDevices =>
      'Una volta effettuato l\'accesso, i tuoi dati si sincronizzano automaticamente e in tempo reale su tutti i tuoi dispositivi.';

  @override
  String get faqQOffline => 'L\'app funziona offline?';

  @override
  String get faqAOffline =>
      'Watchlist e preferiti sono sempre disponibili offline. Per cercare nuovi film serve internet.';

  @override
  String get faqQChangeLanguage => 'Come cambio lingua?';

  @override
  String get faqAChangeLanguage =>
      'Vai su Impostazioni → Lingua e scegli tra le 12 disponibili, oppure usa quella di sistema.';

  @override
  String get faqQChangeTheme => 'Come cambio tra modalità chiara e scura?';

  @override
  String get faqAChangeTheme =>
      'Vai su Impostazioni → Aspetto e scegli Chiaro, Scuro o Auto.';

  @override
  String get faqQWatchTrailer => 'Come guardo un trailer?';

  @override
  String get faqAWatchTrailer =>
      'Apri i dettagli di un film e tocca Guarda trailer. Si aprirà in YouTube se disponibile.';

  @override
  String get faqQDeleteAccount => 'Come elimino il mio account?';

  @override
  String get faqADeleteAccount =>
      'Vai su Profilo → Modifica profilo e cerca Elimina account. I dati cloud verranno eliminati definitivamente.';

  @override
  String get faqQContactSupport => 'Come contatto il supporto?';

  @override
  String get faqAContactSupport =>
      'Vai su Centro assistenza → Contattaci e inviaci un messaggio; si aprirà la tua app email.';

  @override
  String get contactUsTitle => 'Contattaci';

  @override
  String get contactUsSubtitle =>
      'Hai una domanda o un problema? Inviaci un messaggio e ti risponderemo.';

  @override
  String get contactSubjectLabel => 'Oggetto';

  @override
  String get contactMessageLabel => 'Messaggio';

  @override
  String get contactSendAction => 'Invia messaggio';

  @override
  String get contactMailAppUnavailable => 'Nessuna app email trovata.';

  @override
  String contactEmailBodyTemplate(String name, String email, String message) {
    return 'Nome: $name\nEmail: $email\n\n$message';
  }

  @override
  String get feedbackTitle => 'Feedback';

  @override
  String get feedbackSubtitle => 'Com\'è la tua esperienza con l\'app?';

  @override
  String get feedbackCommentHint => 'Dicci di più (opzionale)…';

  @override
  String get feedbackSendAction => 'Invia feedback';

  @override
  String get feedbackRatingRequired => 'Seleziona prima un numero di stelle.';

  @override
  String get feedbackThanks => 'Grazie per il tuo feedback!';

  @override
  String get feedbackNoComment => '(Nessun commento fornito)';

  @override
  String get feedbackEmailSubject => 'Feedback App';

  @override
  String feedbackEmailBodyTemplate(int rating, String comment) {
    return 'Valutazione: $rating/5\n\n$comment';
  }

  @override
  String get termsTitle => 'Termini di servizio';

  @override
  String get privacyTitle => 'Informativa sulla privacy';

  @override
  String get legalLastUpdated => 'Ultimo aggiornamento: Gennaio 2026';

  @override
  String get termsSection1Title => '1. Accettazione dei termini';

  @override
  String get termsSection1Body =>
      'Usando l\'app, accetti questi termini. Se non sei d\'accordo, non usarla.';

  @override
  String get termsSection2Title => '2. Il servizio';

  @override
  String get termsSection2Body =>
      'Questa app permette di consultare info da TMDB. Non ospitiamo né trasmettiamo contenuti video direttamente.';

  @override
  String get termsSection3Title => '3. Account';

  @override
  String get termsSection3Body =>
      'L\'uso come ospite è possibile. Un account permette la sincronizzazione. Sei responsabile della tua password.';

  @override
  String get termsSection4Title => '4. I tuoi contenuti';

  @override
  String get termsSection4Body =>
      'I tuoi dati sono tuoi. Li conserviamo per il servizio e non li vendiamo.';

  @override
  String get termsSection5Title => '5. Dati di terze parti';

  @override
  String get termsSection5Body =>
      'Le info vengono da TMDB e possono variare. L\'app usa l\'API TMDB ma non è certificata da loro.';

  @override
  String get termsSection6Title => '6. Risoluzione';

  @override
  String get termsSection6Body =>
      'Puoi cancellare l\'account quando vuoi. Possiamo sospendere l\'accesso in caso di abusi.';

  @override
  String get termsSection7Title => '7. Modifiche ai termini';

  @override
  String get termsSection7Body =>
      'Possiamo aggiornare questi termini. L\'uso continuato vale come accettazione.';

  @override
  String get privacySection1Title => '1. Cosa raccogliamo';

  @override
  String get privacySection1Body =>
      'In modalità ospite, nessun dato personale. Con un account: nome, email e foto opzionale.';

  @override
  String get privacySection2Title => '2. Dati di watchlist e preferiti';

  @override
  String get privacySection2Body =>
      'Archiviati in modo sicuro su Firestore e accessibili solo a te.';

  @override
  String get privacySection3Title => '3. Servizi di terze parti';

  @override
  String get privacySection3Body =>
      'TMDB per i film e Firebase per i dati. Hanno le loro politiche sulla privacy.';

  @override
  String get privacySection4Title => '4. Archiviazione locale';

  @override
  String get privacySection4Body =>
      'Le tue preferenze sono salvate sul dispositivo per un uso fluido anche offline.';

  @override
  String get privacySection5Title => '5. Cancellazione dati';

  @override
  String get privacySection5Body =>
      'Eliminare l\'account rimuove i dati dal cloud. I dati locali restano finché non si svuota la cache.';

  @override
  String get privacySection6Title => '6. Contatti';

  @override
  String get privacySection6Body =>
      'Domande? Contattaci tramite il Centro assistenza.';
}
