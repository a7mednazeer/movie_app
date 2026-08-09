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
  String get photoUrlHint => 'https://example.com/avatar.jpg';

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
}
