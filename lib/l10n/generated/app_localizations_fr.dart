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
      'No reviews yet — be the first to share your thoughts.';

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
  String get confirm => 'Confirm';

  @override
  String get cancel => 'Annuler';

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
}
