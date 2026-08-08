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
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirm';

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

  @override
  String get back => 'Voltar';

  @override
  String get clear => 'Limpar';

  @override
  String get editInformation => 'Editar informações';

  @override
  String get save => 'Salvar';

  @override
  String get displayName => 'Nome de exibição';

  @override
  String get photoUrl => 'URL da foto';

  @override
  String get enterName => 'Insira seu nome';

  @override
  String get profileUpdated => 'Perfil atualizado com sucesso';

  @override
  String get signIn => 'Entrar';

  @override
  String get signUp => 'Cadastrar-se';

  @override
  String get welcomeBack => 'Bem-vindo de volta';

  @override
  String get signInSubtitle =>
      'Entre para sincronizar sua lista e favoritos entre dispositivos.';

  @override
  String get createAccount => 'Criar conta';

  @override
  String get signUpSubtitle =>
      'Cadastre-se para salvar sua lista e favoritos na sua conta.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get passwordLabel => 'Senha';

  @override
  String get confirmPasswordLabel => 'Confirmar senha';

  @override
  String get nameLabel => 'Nome';

  @override
  String get forgotPassword => 'Esqueceu a senha?';

  @override
  String get noAccountYet => 'Ainda não tem conta? ';

  @override
  String get alreadyHaveAccount => 'Já tem uma conta? ';

  @override
  String get continueAsGuest => 'Continuar como convidado';

  @override
  String get authErrorFieldRequired => 'Este campo é obrigatório.';

  @override
  String get authErrorInvalidEmail => 'Digite um endereço de e-mail válido.';

  @override
  String get authErrorUserDisabled => 'Esta conta foi desativada.';

  @override
  String get authErrorUserNotFound =>
      'Nenhuma conta encontrada com esse e-mail.';

  @override
  String get authErrorWrongPassword => 'E-mail ou senha incorretos.';

  @override
  String get authErrorEmailInUse => 'Já existe uma conta com esse e-mail.';

  @override
  String get authErrorWeakPassword => 'Essa senha é muito fraca.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'A senha deve ter pelo menos $minLength caracteres.';
  }

  @override
  String get authErrorTooManyRequests =>
      'Muitas tentativas. Aguarde um momento e tente novamente.';

  @override
  String get authErrorNotConfigured =>
      'O login ainda não foi configurado para este app.';

  @override
  String get authErrorRequiresRecentLogin =>
      'Faça login novamente para continuar.';

  @override
  String get authErrorPasswordMismatch => 'As senhas não coincidem.';

  @override
  String get authEnterEmailFirst => 'Digite seu e-mail acima primeiro.';

  @override
  String authResetEmailSent(String email) {
    return 'E-mail de redefinição de senha enviado para $email.';
  }

  @override
  String get authSyncBannerTitle => 'Entre para sincronizar';

  @override
  String get authSyncBannerSubtitle =>
      'Salve sua lista e favoritos na sua conta e acesse de qualquer dispositivo.';

  @override
  String get signOut => 'Sair';

  @override
  String get signOutConfirmTitle => 'Sair da conta?';

  @override
  String get signOutConfirmMessage =>
      'Você pode entrar novamente quando quiser. Sua lista e favoritos continuarão salvos na sua conta.';

  @override
  String get signedOutSnack => 'Sessão encerrada';

  @override
  String get guestBadge => 'Convidado';
}
