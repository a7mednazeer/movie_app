// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTagline => 'VOTRE MONDE DE CINÉMA';

  @override
  String get navHome => 'Accueil';

  @override
  String get navSearch => 'Recherche';

  @override
  String get navBrowse => 'Explorer';

  @override
  String get navWatchlist => 'Ma liste';

  @override
  String get navProfile => 'Profil';

  @override
  String get sectionTrending => 'Tendances';

  @override
  String get sectionPopular => 'Films populaires';

  @override
  String get sectionTopRated => 'Les mieux notés';

  @override
  String get sectionUpcoming => 'Prochainement';

  @override
  String get sectionRecommended => 'Recommandés pour vous';

  @override
  String get sectionCategories => 'Catégories';

  @override
  String get seeAll => 'Tout voir';

  @override
  String get moreLikeThis => 'Dans le même genre';

  @override
  String get cast => 'Distribution';

  @override
  String get reviews => 'Avis';

  @override
  String get noReviewsYet =>
      'Aucun avis pour l\'instant — soyez le premier à donner votre avis.';

  @override
  String get overview => 'Synopsis';

  @override
  String get watchTrailer => 'Voir la bande-annonce';

  @override
  String get noTrailerAvailable =>
      'Aucune bande-annonce disponible pour ce titre pour le moment.';

  @override
  String get trailerOpenFailed => 'Impossible d\'ouvrir la bande-annonce.';

  @override
  String get addToWatchlist => 'Ma liste';

  @override
  String get removedFromWatchlist => 'Retiré de la liste';

  @override
  String get addedToWatchlist => 'Ajouté à la liste';

  @override
  String get share => 'Partager';

  @override
  String get readMore => 'Lire plus';

  @override
  String get readLess => 'Lire moins';

  @override
  String get searchHint => 'Rechercher des films, acteurs, genres…';

  @override
  String get recentSearches => 'Recherches récentes';

  @override
  String get trendingSearches => 'Recherches populaires';

  @override
  String get clearAll => 'Tout effacer';

  @override
  String get clearRecentSearchesMessage =>
      'Supprimer toutes vos recherches récentes ? Cette action est irréversible.';

  @override
  String get noResultsFound => 'Aucun film trouvé';

  @override
  String get noResultsSubtitle => 'Essayez un autre titre, acteur ou genre.';

  @override
  String get startSearching => 'Recherchez vos films préférés';

  @override
  String get startSearchingSubtitle =>
      'Trouvez des titres, explorez la distribution et découvrez de nouveaux films.';

  @override
  String get browseCategory => 'Parcourir les catégories';

  @override
  String get noCategoriesAvailable => 'Aucune catégorie disponible';

  @override
  String get checkBackLaterGenres =>
      'Revenez plus tard pour découvrir les genres disponibles.';

  @override
  String get noMoviesInGenre => 'Pas encore de films';

  @override
  String get checkBackSoonGenre =>
      'Rien dans ce genre pour l\'instant — revenez bientôt.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ma liste ($count)',
      zero: 'Ma liste',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'Votre liste est vide';

  @override
  String get watchlistEmptySubtitle =>
      'Les films que vous enregistrez apparaîtront ici pour ne jamais les perdre de vue.';

  @override
  String removedFromWatchlistSnack(String title) {
    return '\"$title\" retiré';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Favoris ($count)',
      zero: 'Favoris',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'Aucun favori pour l\'instant';

  @override
  String get favoritesEmptySubtitle =>
      'Les films que vous marquez comme favoris depuis leur fiche apparaîtront ici.';

  @override
  String removedFromFavoritesSnack(String title) {
    return '\"$title\" retiré des favoris';
  }

  @override
  String get undo => 'ANNULER';

  @override
  String get retry => 'Réessayer';

  @override
  String get genericErrorSubtitle =>
      'Un problème est survenu lors du chargement. Veuillez réessayer.';

  @override
  String get noInternetSubtitle => 'Vérifiez votre connexion et réessayez.';

  @override
  String get profileTitle => 'Profil';

  @override
  String get yourLibrary => 'Votre bibliothèque';

  @override
  String get everythingSaved =>
      'Tout ce que vous avez enregistré, au même endroit';

  @override
  String get favoritesLabel => 'Favoris';

  @override
  String get watchlistLabel => 'Ma liste';

  @override
  String get settingsLabel => 'Paramètres';

  @override
  String get settingsSubtitle => 'Thème, langue et plus';

  @override
  String get settingsTitle => 'Paramètres';

  @override
  String get appearance => 'Apparence';

  @override
  String get preferences => 'Préférences';

  @override
  String get languageLabel => 'Langue';

  @override
  String get aboutSection => 'À propos';

  @override
  String get aboutThisApp => 'À propos de cette app';

  @override
  String versionLabel(String version) {
    return 'Version $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return 'À propos de $appName';
  }

  @override
  String get aboutDescription =>
      'Une app premium pour découvrir des films : tendances, films populaires et les mieux notés, recherche, et suivi de ce que vous voulez regarder.';

  @override
  String get tmdbAttribution =>
      'Ce produit utilise l\'API TMDB, mais n\'est ni approuvé ni certifié par TMDB.';

  @override
  String get visitTmdb => 'Visiter TMDB';

  @override
  String get close => 'Fermer';

  @override
  String get comingSoon => 'Bientôt disponible';

  @override
  String get themeLight => 'Clair';

  @override
  String get themeDark => 'Sombre';

  @override
  String get themeAuto => 'Automatique';

  @override
  String get cancel => 'Annuler';

  @override
  String get confirm => 'Confirmer';

  @override
  String get removeLabel => 'Retirer';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — regarde la bande-annonce : $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Découvre \"$title\" sur Movies !';
  }

  @override
  String get notificationsLabel => 'Notifications';

  @override
  String get notificationsSubtitle => 'Gérez ce dont vous êtes notifié';

  @override
  String get helpCenterLabel => 'Centre d\'aide';

  @override
  String get helpCenterSubtitle => 'FAQ, contact et plus';

  @override
  String get systemDefault => 'Paramètre système';

  @override
  String get back => 'Retour';

  @override
  String get clear => 'Effacer';

  @override
  String get editInformation => 'Modifier les informations';

  @override
  String get save => 'Enregistrer';

  @override
  String get displayName => 'Nom d\'affichage';

  @override
  String get photoUrl => 'URL de la photo';

  @override
  String get enterName => 'Entrez votre nom';

  @override
  String get profileUpdated => 'Profil mis à jour avec succès';

  @override
  String get signIn => 'Se connecter';

  @override
  String get signUp => 'S\'inscrire';

  @override
  String get welcomeBack => 'Content de vous revoir';

  @override
  String get signInSubtitle =>
      'Connectez-vous pour synchroniser votre liste et vos favoris entre appareils.';

  @override
  String get createAccount => 'Créer un compte';

  @override
  String get signUpSubtitle =>
      'Inscrivez-vous pour enregistrer votre liste et vos favoris sur votre compte.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get passwordLabel => 'Mot de passe';

  @override
  String get confirmPasswordLabel => 'Confirmer le mot de passe';

  @override
  String get nameLabel => 'Nom';

  @override
  String get forgotPassword => 'Mot de passe oublié ?';

  @override
  String get noAccountYet => 'Pas encore de compte ? ';

  @override
  String get alreadyHaveAccount => 'Vous avez déjà un compte ? ';

  @override
  String get continueAsGuest => 'Continuer en tant qu\'invité';

  @override
  String get authErrorFieldRequired => 'Ce champ est obligatoire.';

  @override
  String get authErrorInvalidEmail => 'Saisissez une adresse e-mail valide.';

  @override
  String get authErrorUserDisabled => 'Ce compte a été désactivé.';

  @override
  String get authErrorUserNotFound => 'Aucun compte trouvé avec cet e-mail.';

  @override
  String get authErrorWrongPassword => 'E-mail ou mot de passe incorrect.';

  @override
  String get authErrorEmailInUse => 'Un compte existe déjà avec cet e-mail.';

  @override
  String get authErrorWeakPassword => 'Ce mot de passe est trop faible.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'Le mot de passe doit contenir au moins $minLength caractères.';
  }

  @override
  String get authErrorTooManyRequests =>
      'Trop de tentatives. Veuillez patienter puis réessayer.';

  @override
  String get authErrorNotConfigured =>
      'La connexion n\'est pas encore configurée pour cette app.';

  @override
  String get authErrorRequiresRecentLogin =>
      'Veuillez vous reconnecter pour continuer.';

  @override
  String get authErrorPasswordMismatch =>
      'Les mots de passe ne correspondent pas.';

  @override
  String get authEnterEmailFirst =>
      'Saisissez d\'abord votre e-mail ci-dessus.';

  @override
  String authResetEmailSent(String email) {
    return 'E-mail de réinitialisation envoyé à $email.';
  }

  @override
  String get authSyncBannerTitle => 'Connectez-vous pour synchroniser';

  @override
  String get authSyncBannerSubtitle =>
      'Enregistrez votre liste et vos favoris sur votre compte et accédez-y depuis n\'importe quel appareil.';

  @override
  String get signOut => 'Se déconnecter';

  @override
  String get signOutConfirmTitle => 'Se déconnecter ?';

  @override
  String get signOutConfirmMessage =>
      'Vous pourrez vous reconnecter à tout moment. Votre liste et vos favoris resteront enregistrés sur votre compte.';

  @override
  String get signedOutSnack => 'Déconnecté';

  @override
  String get guestBadge => 'Invité';

  @override
  String get syncedToAccount => 'Synchronisé avec votre compte';

  @override
  String get localOnlyBanner =>
      'Enregistré uniquement sur cet appareil — connectez-vous pour synchroniser entre appareils';

  @override
  String get editProfile => 'Modifier le profil';

  @override
  String get photoUrlLabel => 'URL de la photo';

  @override
  String get photoUrlFieldHint => 'https://example.com/photo.jpg';

  @override
  String get photoUrlHint =>
      'Collez un lien vers une image. Laissez vide pour supprimer votre photo.';

  @override
  String get invalidUrlError =>
      'Saisissez une URL d\'image valide commençant par http:// ou https://.';

  @override
  String get saveChanges => 'Enregistrer';

  @override
  String get profileUpdatedSnack => 'Profil mis à jour';

  @override
  String get deleteAccountAction => 'Supprimer le compte';

  @override
  String get deleteAccountConfirmTitle => 'Supprimer votre compte ?';

  @override
  String get deleteAccountConfirmMessage =>
      'Cela supprime définitivement votre compte et votre connexion. Votre liste et vos favoris resteront sur cet appareil mais ne seront plus synchronisés. Cette action est irréversible.';

  @override
  String get accountDeletedSnack => 'Compte supprimé';

  @override
  String get chatbotEntrySubtitle =>
      'Obtenez des réponses rapides de notre assistant FAQ';

  @override
  String get faqEntrySubtitle =>
      'Parcourez les questions et réponses courantes';

  @override
  String get contactUsEntrySubtitle => 'Envoyez-nous un message';

  @override
  String get feedbackEntrySubtitle =>
      'Évaluez l\'app et dites-nous ce que vous en pensez';

  @override
  String get aboutEntrySubtitle => 'Version, crédits et mentions légales';

  @override
  String get chatbotTitle => 'Assistant d\'aide';

  @override
  String get chatbotGreeting =>
      'Bonjour ! Posez-moi vos questions sur l\'utilisation de l\'app — je ferai de mon mieux pour vous aider.';

  @override
  String get chatbotInputHint => 'Tapez votre question…';

  @override
  String get chatbotNoMatch =>
      'Je ne suis pas sûr de ça. Essayez de reformuler, consultez la FAQ, ou contactez-nous et une vraie personne vous aidera.';

  @override
  String get chatbotContactHumanPrompt =>
      'Besoin de parler à quelqu\'un ? Contactez-nous';

  @override
  String get faqTitle => 'Questions fréquentes';

  @override
  String get faqSearchHint => 'Rechercher dans la FAQ…';

  @override
  String get faqNoResultsSubtitle =>
      'Essayez un autre terme de recherche, ou posez la question à notre assistant.';

  @override
  String get faqQAboutApp => 'Qu\'est-ce que cette app ?';

  @override
  String get faqAAboutApp =>
      'MOVIES est une app de découverte de films : parcourez les tendances, les films populaires et les mieux notés, recherchez ce que vous voulez et suivez ce que vous voulez regarder.';

  @override
  String get faqQSearch => 'Comment rechercher un film ?';

  @override
  String get faqASearch =>
      'Appuyez sur Recherche dans la barre de navigation, puis tapez un titre, un acteur ou un genre. Les résultats se mettent à jour au fur et à mesure.';

  @override
  String get faqQWatchlistVsFavorites =>
      'Quelle est la différence entre Ma liste et Favoris ?';

  @override
  String get faqAWatchlistVsFavorites =>
      'Ma liste regroupe les films que vous prévoyez de regarder. Favoris regroupe ceux que vous aimez déjà. Ils sont suivis séparément, et un film peut figurer dans les deux.';

  @override
  String get faqQSaveMovie => 'Comment enregistrer un film ?';

  @override
  String get faqASaveMovie =>
      'Appuyez sur l\'icône de marque-page sur n\'importe quelle fiche film, ou utilisez les boutons Ma liste/Favori sur la page de détails d\'un film.';

  @override
  String get faqQNeedAccount =>
      'Ai-je besoin d\'un compte pour utiliser l\'app ?';

  @override
  String get faqANeedAccount =>
      'Non — tout fonctionne en tant qu\'invité, enregistré localement sur votre appareil. Se connecter ajoute la synchronisation entre appareils, pour que votre liste et vos favoris vous suivent partout où vous vous connectez.';

  @override
  String get faqQSignIn => 'Comment se connecter ou créer un compte ?';

  @override
  String get faqASignIn =>
      'Allez dans Profil et appuyez sur la bannière de connexion, ou Profil → votre espace compte si vous en avez déjà un. L\'inscription ne nécessite qu\'un nom, un e-mail et un mot de passe.';

  @override
  String get faqQSyncDevices =>
      'Comment fonctionne la synchronisation entre appareils ?';

  @override
  String get faqASyncDevices =>
      'Une fois connecté, votre liste et vos favoris se synchronisent automatiquement avec votre compte et se mettent à jour en temps réel sur tout autre appareil connecté au même compte.';

  @override
  String get faqQOffline => 'L\'app fonctionne-t-elle hors ligne ?';

  @override
  String get faqAOffline =>
      'Votre liste et vos favoris sont toujours disponibles hors ligne car ils sont stockés sur votre appareil. Parcourir de nouveaux films nécessite une connexion internet.';

  @override
  String get faqQChangeLanguage => 'Comment changer la langue de l\'app ?';

  @override
  String get faqAChangeLanguage =>
      'Allez dans Paramètres → Langue et choisissez parmi 12 langues disponibles, ou sélectionnez Paramètre système pour suivre la langue de votre appareil.';

  @override
  String get faqQChangeTheme =>
      'Comment basculer entre le mode clair et sombre ?';

  @override
  String get faqAChangeTheme =>
      'Allez dans Paramètres → Apparence et choisissez Clair, Sombre ou Automatique pour suivre le réglage de votre appareil.';

  @override
  String get faqQWatchTrailer => 'Comment regarder une bande-annonce ?';

  @override
  String get faqAWatchTrailer =>
      'Ouvrez la page de détails d\'un film et appuyez sur Voir la bande-annonce. Elle s\'ouvre dans YouTube si une bande-annonce est disponible pour ce titre.';

  @override
  String get faqQDeleteAccount => 'Comment supprimer mon compte ?';

  @override
  String get faqADeleteAccount =>
      'Allez dans Profil → Modifier le profil et faites défiler jusqu\'à Supprimer le compte. Cela supprime définitivement votre compte ; votre liste et vos favoris restent sur votre appareil mais ne se synchronisent plus.';

  @override
  String get faqQContactSupport => 'Comment contacter le support ?';

  @override
  String get faqAContactSupport =>
      'Allez dans Centre d\'aide → Contactez-nous et envoyez-nous un message — cela ouvre votre app e-mail avec tout pré-rempli.';

  @override
  String get contactUsTitle => 'Contactez-nous';

  @override
  String get contactUsSubtitle =>
      'Une question ou un problème ? Envoyez-nous un message et nous vous répondrons.';

  @override
  String get contactSubjectLabel => 'Objet';

  @override
  String get contactMessageLabel => 'Message';

  @override
  String get contactSendAction => 'Envoyer le message';

  @override
  String get contactMailAppUnavailable =>
      'Aucune app e-mail trouvée sur cet appareil.';

  @override
  String contactEmailBodyTemplate(String name, String email, String message) {
    return 'Nom : $name\nE-mail : $email\n\n$message';
  }

  @override
  String get feedbackTitle => 'Avis';

  @override
  String get feedbackSubtitle =>
      'Comment se passe votre expérience avec l\'app jusqu\'à présent ?';

  @override
  String get feedbackCommentHint => 'Dites-nous en plus (facultatif)…';

  @override
  String get feedbackSendAction => 'Envoyer l\'avis';

  @override
  String get feedbackRatingRequired =>
      'Veuillez d\'abord sélectionner une note.';

  @override
  String get feedbackThanks => 'Merci pour votre avis !';

  @override
  String get feedbackNoComment => '(Aucun commentaire fourni)';

  @override
  String get feedbackEmailSubject => 'Avis sur l\'app';

  @override
  String feedbackEmailBodyTemplate(int rating, String comment) {
    return 'Note : $rating/5\n\n$comment';
  }

  @override
  String get termsTitle => 'Conditions d\'utilisation';

  @override
  String get privacyTitle => 'Politique de confidentialité';

  @override
  String get legalLastUpdated => 'Dernière mise à jour : janvier 2026';

  @override
  String get termsSection1Title => '1. Acceptation des conditions';

  @override
  String get termsSection1Body =>
      'En utilisant cette app, vous acceptez ces Conditions d\'utilisation. Si vous n\'êtes pas d\'accord, veuillez ne pas utiliser l\'app.';

  @override
  String get termsSection2Title => '2. Le service';

  @override
  String get termsSection2Body =>
      'Cette app vous permet de parcourir, rechercher et enregistrer des informations sur les films provenant de The Movie Database (TMDB). Nous n\'hébergeons, ne diffusons ni ne distribuons aucun contenu vidéo nous-mêmes.';

  @override
  String get termsSection3Title => '3. Comptes';

  @override
  String get termsSection3Body =>
      'Vous pouvez utiliser la plupart des fonctionnalités en tant qu\'invité, sans compte. Créer un compte (e-mail et mot de passe, via Firebase Authentication) permet de synchroniser votre liste et vos favoris entre vos appareils. Vous êtes responsable de la sécurité de votre mot de passe.';

  @override
  String get termsSection4Title => '4. Votre contenu';

  @override
  String get termsSection4Body =>
      'Votre liste, vos favoris, votre nom de profil et l\'URL de votre photo vous appartiennent. Nous les stockons pour fournir le service et ne les vendons ni ne les utilisons à des fins publicitaires.';

  @override
  String get termsSection5Title => '5. Données de tiers';

  @override
  String get termsSection5Body =>
      'Les titres, affiches, notes, distributions et critiques de films sont fournis par TMDB et peuvent être inexacts ou changer sans préavis. Ce produit utilise l\'API TMDB, mais n\'est ni approuvé ni certifié par TMDB.';

  @override
  String get termsSection6Title => '6. Résiliation';

  @override
  String get termsSection6Body =>
      'Vous pouvez supprimer votre compte à tout moment depuis Profil → Modifier le profil. Nous pouvons suspendre l\'accès en cas de comportement enfreignant ces conditions ou d\'utilisation abusive du service.';

  @override
  String get termsSection7Title => '7. Modifications de ces conditions';

  @override
  String get termsSection7Body =>
      'Nous pouvons mettre à jour ces conditions de temps à autre. Continuer à utiliser l\'app après des modifications signifie que vous acceptez les conditions mises à jour.';

  @override
  String get privacySection1Title => '1. Ce que nous collectons';

  @override
  String get privacySection1Body =>
      'Si vous utilisez l\'app en tant qu\'invité, nous ne collectons aucune donnée personnelle — votre liste et vos favoris sont stockés uniquement sur votre appareil. Si vous créez un compte, nous collectons votre nom, votre adresse e-mail et (facultativement) une URL de photo de profil via Firebase Authentication.';

  @override
  String get privacySection2Title => '2. Données de liste et de favoris';

  @override
  String get privacySection2Body =>
      'Une fois connecté, vos films enregistrés sont stockés dans Firestore sous votre compte et synchronisés entre vos appareils. Les données de chaque compte ne sont accessibles qu\'à ce compte, conformément aux règles de sécurité Firestore.';

  @override
  String get privacySection3Title => '3. Services tiers';

  @override
  String get privacySection3Body =>
      'Nous utilisons The Movie Database (TMDB) pour récupérer les informations sur les films, et Firebase (Google) pour l\'authentification et le stockage des données. Ces services ont leurs propres politiques de confidentialité régissant la gestion des données de leur côté.';

  @override
  String get privacySection4Title => '4. Stockage local';

  @override
  String get privacySection4Body =>
      'Votre liste, vos favoris, votre thème et vos préférences de langue sont stockés localement sur votre appareil (via Hive) afin que l\'app fonctionne hors ligne et instantanément, que vous soyez connecté ou non.';

  @override
  String get privacySection5Title => '5. Suppression des données';

  @override
  String get privacySection5Body =>
      'Vous pouvez supprimer votre compte à tout moment depuis Profil → Modifier le profil, ce qui supprime définitivement votre compte et arrête toute synchronisation future. Les données déjà stockées localement sur votre appareil restent jusqu\'à ce que vous effaciez le stockage de l\'app.';

  @override
  String get privacySection6Title => '6. Contact';

  @override
  String get privacySection6Body =>
      'Des questions sur cette politique ? Contactez-nous via Centre d\'aide → Contactez-nous.';
}
