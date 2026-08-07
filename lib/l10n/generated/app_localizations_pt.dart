// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTagline => 'O SEU MUNDO DO CINEMA';

  @override
  String get navHome => 'Início';

  @override
  String get navSearch => 'Buscar';

  @override
  String get navBrowse => 'Explorar';

  @override
  String get navWatchlist => 'Minha Lista';

  @override
  String get navProfile => 'Perfil';

  @override
  String get sectionTrending => 'Em Alta';

  @override
  String get sectionPopular => 'Filmes Populares';

  @override
  String get sectionTopRated => 'Mais Bem Avaliados';

  @override
  String get sectionUpcoming => 'Em Breve';

  @override
  String get sectionRecommended => 'Recomendados Para Você';

  @override
  String get sectionCategories => 'Categorias';

  @override
  String get seeAll => 'Ver Tudo';

  @override
  String get moreLikeThis => 'Filmes Parecidos';

  @override
  String get cast => 'Elenco';

  @override
  String get reviews => 'Avaliações';

  @override
  String get noReviewsYet =>
      'No reviews yet — be the first to share your thoughts.';

  @override
  String get overview => 'Sinopse';

  @override
  String get watchTrailer => 'Assistir Trailer';

  @override
  String get noTrailerAvailable =>
      'Ainda não há trailer disponível para este título.';

  @override
  String get trailerOpenFailed => 'Não foi possível abrir o trailer.';

  @override
  String get addToWatchlist => 'Minha Lista';

  @override
  String get removedFromWatchlist => 'Removido da lista';

  @override
  String get addedToWatchlist => 'Adicionado à lista';

  @override
  String get share => 'Compartilhar';

  @override
  String get readMore => 'Ler mais';

  @override
  String get readLess => 'Ler menos';

  @override
  String get searchHint => 'Buscar filmes, atores, gêneros…';

  @override
  String get recentSearches => 'Buscas Recentes';

  @override
  String get trendingSearches => 'Buscas em Alta';

  @override
  String get clearAll => 'Limpar Tudo';

  @override
  String get clearRecentSearchesMessage =>
      'Remover todas as suas buscas recentes? Esta ação não pode ser desfeita.';

  @override
  String get noResultsFound => 'Nenhum filme encontrado';

  @override
  String get noResultsSubtitle => 'Tente outro título, ator ou gênero.';

  @override
  String get startSearching => 'Busque seus filmes favoritos';

  @override
  String get startSearchingSubtitle =>
      'Encontre títulos, veja o elenco e descubra algo novo.';

  @override
  String get browseCategory => 'Explorar Categorias';

  @override
  String get noCategoriesAvailable => 'Nenhuma categoria disponível';

  @override
  String get checkBackLaterGenres =>
      'Volte mais tarde para ver os gêneros disponíveis.';

  @override
  String get noMoviesInGenre => 'Ainda não há filmes';

  @override
  String get checkBackSoonGenre =>
      'Não há nada neste gênero por enquanto — volte em breve.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Minha Lista ($count)',
      zero: 'Minha Lista',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'Sua lista está vazia';

  @override
  String get watchlistEmptySubtitle =>
      'Os filmes que você salvar aparecerão aqui para você nunca perdê-los de vista.';

  @override
  String removedFromWatchlistSnack(String title) {
    return '\"$title\" removido';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Favoritos ($count)',
      zero: 'Favoritos',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'Ainda não há favoritos';

  @override
  String get favoritesEmptySubtitle =>
      'Os filmes que você marcar como favoritos nos detalhes aparecerão aqui.';

  @override
  String removedFromFavoritesSnack(String title) {
    return '\"$title\" removido dos favoritos';
  }

  @override
  String get undo => 'DESFAZER';

  @override
  String get retry => 'Tentar novamente';

  @override
  String get genericErrorSubtitle =>
      'Tivemos um problema ao carregar este conteúdo. Tente novamente.';

  @override
  String get noInternetSubtitle => 'Verifique sua conexão e tente novamente.';

  @override
  String get profileTitle => 'Perfil';

  @override
  String get yourLibrary => 'Sua Biblioteca';

  @override
  String get everythingSaved => 'Tudo o que você salvou, em um só lugar';

  @override
  String get favoritesLabel => 'Favoritos';

  @override
  String get watchlistLabel => 'Minha Lista';

  @override
  String get settingsLabel => 'Configurações';

  @override
  String get settingsSubtitle => 'Tema, idioma e mais';

  @override
  String get settingsTitle => 'Configurações';

  @override
  String get appearance => 'Aparência';

  @override
  String get preferences => 'Preferências';

  @override
  String get languageLabel => 'Idioma';

  @override
  String get aboutSection => 'Sobre';

  @override
  String get aboutThisApp => 'Sobre este app';

  @override
  String versionLabel(String version) {
    return 'Versão $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return 'Sobre o $appName';
  }

  @override
  String get aboutDescription =>
      'Um app premium para descobrir filmes: veja tendências, populares e mais bem avaliados, busque e acompanhe o que você quer assistir.';

  @override
  String get tmdbAttribution =>
      'Este produto usa a API do TMDB, mas não é endossado nem certificado pelo TMDB.';

  @override
  String get visitTmdb => 'Visitar TMDB';

  @override
  String get close => 'Fechar';

  @override
  String get comingSoon => 'Em breve';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Escuro';

  @override
  String get themeAuto => 'Automático';

  @override
  String get confirm => 'Confirm';

  @override
  String get cancel => 'Cancelar';

  @override
  String get removeLabel => 'Remover';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — confira o trailer: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Confira \"$title\" no Movies!';
  }

  @override
  String get notificationsLabel => 'Notificações';

  @override
  String get notificationsSubtitle => 'Gerencie sobre o que você é notificado';

  @override
  String get helpCenterLabel => 'Central de Ajuda';

  @override
  String get helpCenterSubtitle => 'Perguntas frequentes, contato e mais';

  @override
  String get systemDefault => 'Padrão do sistema';
}
