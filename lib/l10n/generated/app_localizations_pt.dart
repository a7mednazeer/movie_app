// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTagline => 'O TEU MUNDO DE CINEMA';

  @override
  String get navHome => 'Início';

  @override
  String get navSearch => 'Pesquisar';

  @override
  String get navBrowse => 'Explorar';

  @override
  String get navWatchlist => 'Minha Lista';

  @override
  String get navProfile => 'Perfil';

  @override
  String get sectionTrending => 'Tendências';

  @override
  String get sectionPopular => 'Filmes Populares';

  @override
  String get sectionTopRated => 'Melhores Classificados';

  @override
  String get sectionUpcoming => 'Brevemente';

  @override
  String get sectionRecommended => 'Recomendados para ti';

  @override
  String get sectionCategories => 'Categorias';

  @override
  String get seeAll => 'Ver tudo';

  @override
  String get moreLikeThis => 'Mais como este';

  @override
  String get cast => 'Elenco';

  @override
  String get reviews => 'Críticas';

  @override
  String get noReviewsYet =>
      'Ainda não há críticas — sê o primeiro a partilhar a tua opinião.';

  @override
  String get overview => 'Sinopse';

  @override
  String get watchTrailer => 'Ver Trailer';

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
  String get share => 'Partilhar';

  @override
  String get readMore => 'Ler mais';

  @override
  String get readLess => 'Ler menos';

  @override
  String get searchHint => 'Pesquisar filmes, atores, géneros…';

  @override
  String get recentSearches => 'Pesquisas Recentes';

  @override
  String get trendingSearches => 'Pesquisas Populares';

  @override
  String get clearAll => 'Limpar tudo';

  @override
  String get clearRecentSearchesMessage =>
      'Remover todas as pesquisas recentes? Esta ação não pode ser desfeita.';

  @override
  String get noResultsFound => 'Nenhum filme encontrado';

  @override
  String get noResultsSubtitle => 'Tenta um título, ator ou género diferente.';

  @override
  String get startSearching => 'Pesquisa os teus filmes favoritos';

  @override
  String get startSearchingSubtitle =>
      'Encontra títulos, explora o elenco e descobre novidades.';

  @override
  String get browseCategory => 'Explorar Categoria';

  @override
  String get noCategoriesAvailable => 'Nenhuma categoria disponível';

  @override
  String get checkBackLaterGenres =>
      'Volta mais tarde para ver os géneros disponíveis.';

  @override
  String get noMoviesInGenre => 'Ainda não há filmes';

  @override
  String get checkBackSoonGenre =>
      'Nada neste género por agora — volta em breve.';

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
  String get watchlistEmptyTitle => 'A tua lista está vazia';

  @override
  String get watchlistEmptySubtitle =>
      'Os filmes que guardares aparecerão aqui para que nunca os percas de vista.';

  @override
  String removedFromWatchlistSnack(String title) {
    return 'Removido \"$title\"';
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
  String get favoritesEmptyTitle => 'Ainda não tens favoritos';

  @override
  String get favoritesEmptySubtitle =>
      'Os filmes que marcares como favoritos aparecerão aqui.';

  @override
  String removedFromFavoritesSnack(String title) {
    return 'Removido \"$title\" dos favoritos';
  }

  @override
  String get undo => 'ANULAR';

  @override
  String get retry => 'Repetir';

  @override
  String get genericErrorSubtitle =>
      'Ocorreu um erro ao carregar este conteúdo. Tenta novamente.';

  @override
  String get noInternetSubtitle => 'Verifica a tua ligação e tenta novamente.';

  @override
  String get profileTitle => 'Perfil';

  @override
  String get yourLibrary => 'A tua biblioteca';

  @override
  String get everythingSaved => 'Tudo o que guardaste, num só lugar';

  @override
  String get favoritesLabel => 'Favoritos';

  @override
  String get watchlistLabel => 'Minha Lista';

  @override
  String get settingsLabel => 'Definições';

  @override
  String get settingsSubtitle => 'Tema, idioma e sobre';

  @override
  String get settingsTitle => 'Definições';

  @override
  String get appearance => 'Aparência';

  @override
  String get preferences => 'Preferências';

  @override
  String get languageLabel => 'Idioma';

  @override
  String get aboutSection => 'Sobre';

  @override
  String get aboutThisApp => 'Sobre esta aplicação';

  @override
  String versionLabel(String version) {
    return 'Versão $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return 'Sobre $appName';
  }

  @override
  String get aboutDescription =>
      'Uma aplicação premium de descoberta de filmes — explora títulos em tendência, populares e melhor classificados, pesquisa e gere o que queres ver.';

  @override
  String get tmdbAttribution =>
      'Este produto utiliza a API do TMDB mas não é endossado ou certificado pelo TMDB.';

  @override
  String get visitTmdb => 'Visitar TMDB';

  @override
  String get close => 'Fechar';

  @override
  String get comingSoon => 'Brevemente';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Escuro';

  @override
  String get themeAuto => 'Auto';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get removeLabel => 'Remover';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — vê o trailer: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Vê \"$title\" no Movies!';
  }

  @override
  String get notificationsLabel => 'Notificações';

  @override
  String get notificationsSubtitle => 'Gere as tuas notificações';

  @override
  String get helpCenterLabel => 'Centro de Ajuda';

  @override
  String get helpCenterSubtitle => 'FAQs, contacto e mais';

  @override
  String get systemDefault => 'Padrão do sistema';

  @override
  String get back => 'Voltar';

  @override
  String get clear => 'Limpar';

  @override
  String get editInformation => 'Editar Informações';

  @override
  String get save => 'Guardar';

  @override
  String get displayName => 'Nome de Exibição';

  @override
  String get photoUrl => 'URL da Foto';

  @override
  String get enterName => 'Introduz o teu nome';

  @override
  String get profileUpdated => 'Perfil atualizado com sucesso';

  @override
  String get signIn => 'Iniciar Sessão';

  @override
  String get signUp => 'Registar';

  @override
  String get welcomeBack => 'Bem-vindo de volta';

  @override
  String get signInSubtitle =>
      'Inicia sessão para sincronizar a tua lista e favoritos em todos os teus dispositivos.';

  @override
  String get createAccount => 'Criar Conta';

  @override
  String get signUpSubtitle =>
      'Regista-te para guardar a tua lista e favoritos na tua conta.';

  @override
  String get emailLabel => 'E-mail';

  @override
  String get passwordLabel => 'Palavra-passe';

  @override
  String get confirmPasswordLabel => 'Confirmar palavra-passe';

  @override
  String get nameLabel => 'Nome';

  @override
  String get forgotPassword => 'Esqueceste-te da palavra-passe?';

  @override
  String get noAccountYet => 'Não tens uma conta? ';

  @override
  String get alreadyHaveAccount => 'Já tens uma conta? ';

  @override
  String get continueAsGuest => 'Continuar como Convidado';

  @override
  String get authErrorFieldRequired => 'Este campo é obrigatório.';

  @override
  String get authErrorInvalidEmail => 'Introduz um e-mail válido.';

  @override
  String get authErrorUserDisabled => 'Esta conta foi desativada.';

  @override
  String get authErrorUserNotFound =>
      'Nenhuma conta encontrada com este e-mail.';

  @override
  String get authErrorWrongPassword => 'E-mail ou palavra-passe incorretos.';

  @override
  String get authErrorEmailInUse => 'Já existe uma conta com este e-mail.';

  @override
  String get authErrorWeakPassword => 'A palavra-passe é demasiado fraca.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'A palavra-passe deve ter pelo menos $minLength caracteres.';
  }

  @override
  String get authErrorTooManyRequests =>
      'Demasiadas tentativas. Aguarda um momento e tenta novamente.';

  @override
  String get authErrorNotConfigured =>
      'O início de sessão ainda não está configurado.';

  @override
  String get authErrorRequiresRecentLogin =>
      'Inicia sessão novamente para continuar.';

  @override
  String get authErrorPasswordMismatch => 'As palavras-passe não coincidem.';

  @override
  String get authEnterEmailFirst => 'Introduz primeiro o teu e-mail acima.';

  @override
  String authResetEmailSent(String email) {
    return 'E-mail de reposição enviado para $email.';
  }

  @override
  String get authSyncBannerTitle => 'Inicia sessão para sincronizar';

  @override
  String get authSyncBannerSubtitle =>
      'Guarda a tua lista e favoritos na tua conta e acede em qualquer dispositivo.';

  @override
  String get signOut => 'Sair';

  @override
  String get signOutConfirmTitle => 'Sair?';

  @override
  String get signOutConfirmMessage =>
      'Podes voltar a entrar a qualquer momento. A tua lista e favoritos ficam guardados na tua conta.';

  @override
  String get signedOutSnack => 'Sessão terminada';

  @override
  String get guestBadge => 'Convidado';

  @override
  String get syncedToAccount => 'Sincronizado com a tua conta';

  @override
  String get localOnlyBanner =>
      'Guardado apenas neste dispositivo — entra para sincronizar';

  @override
  String get editProfile => 'Editar Perfil';

  @override
  String get photoUrlLabel => 'URL da Foto';

  @override
  String get photoUrlFieldHint => 'https://example.com/photo.jpg';

  @override
  String get photoUrlHint =>
      'Cola um link para uma imagem. Deixa em branco para remover a foto.';

  @override
  String get invalidUrlError =>
      'Introduz um URL de imagem válido começado por http:// ou https://.';

  @override
  String get saveChanges => 'Guardar Alterações';

  @override
  String get profileUpdatedSnack => 'Perfil atualizado';

  @override
  String get deleteAccountAction => 'Eliminar Conta';

  @override
  String get deleteAccountConfirmTitle => 'Eliminar a tua conta?';

  @override
  String get deleteAccountConfirmMessage =>
      'Isto eliminará permanentemente a tua conta. A tua lista e favoritos permanecem neste dispositivo mas deixarão de sincronizar. Esta ação é irreversível.';

  @override
  String get accountDeletedSnack => 'Conta eliminada';

  @override
  String get chatbotEntrySubtitle =>
      'Respostas rápidas do nosso assistente de FAQ';

  @override
  String get faqEntrySubtitle => 'Explora perguntas e respostas comuns';

  @override
  String get contactUsEntrySubtitle => 'Envia-nos uma mensagem';

  @override
  String get feedbackEntrySubtitle =>
      'Avalia a aplicação e diz-nos o que pensas';

  @override
  String get aboutEntrySubtitle => 'Versão, créditos e legal';

  @override
  String get chatbotTitle => 'Assistente de Ajuda';

  @override
  String get chatbotGreeting =>
      'Olá! Pergunta-me o que quiseres sobre a app — farei o meu melhor para ajudar.';

  @override
  String get chatbotInputHint => 'Escreve a tua pergunta…';

  @override
  String get chatbotNoMatch =>
      'Não tenho a certeza sobre isso. Tenta reformular, consulta as FAQ ou contacta-nos.';

  @override
  String get chatbotContactHumanPrompt =>
      'Precisas de uma pessoa real? Contacta-nos';

  @override
  String get faqTitle => 'Perguntas Frequentes';

  @override
  String get faqSearchHint => 'Pesquisar nas FAQ…';

  @override
  String get faqNoResultsSubtitle =>
      'Tenta outro termo ou pergunta ao nosso assistente.';

  @override
  String get faqQAboutApp => 'O que é esta aplicação?';

  @override
  String get faqAAboutApp =>
      'MOVIES é uma app para descobrir filmes — explora tendências, populares, melhores classificados e gere o que queres ver.';

  @override
  String get faqQSearch => 'Como pesquiso um filme?';

  @override
  String get faqASearch =>
      'Toca em Pesquisar no menu inferior e escreve um título, ator ou género. Os resultados surgem ao escrever.';

  @override
  String get faqQWatchlistVsFavorites =>
      'Qual a diferença entre Minha Lista e Favoritos?';

  @override
  String get faqAWatchlistVsFavorites =>
      'A Lista é para filmes que queres ver. Favoritos para os que já adoras. São listas separadas.';

  @override
  String get faqQSaveMovie => 'Como guardo um filme?';

  @override
  String get faqASaveMovie =>
      'Toca no ícone de marcador em qualquer filme ou usa os botões na página de detalhes.';

  @override
  String get faqQNeedAccount => 'Preciso de conta para usar a app?';

  @override
  String get faqANeedAccount =>
      'Não — tudo funciona como convidado. Iniciar sessão permite a sincronização entre dispositivos.';

  @override
  String get faqQSignIn => 'Como inicio sessão ou crio conta?';

  @override
  String get faqASignIn =>
      'Vai a Perfil e toca no banner de entrada. Apenas precisas de nome, e-mail e palavra-passe.';

  @override
  String get faqQSyncDevices =>
      'Como funciona a sincronização entre dispositivos?';

  @override
  String get faqASyncDevices =>
      'Ao entrar, os teus dados sincronizam automaticamente e em tempo real em todos os teus dispositivos.';

  @override
  String get faqQOffline => 'A app funciona offline?';

  @override
  String get faqAOffline =>
      'A tua lista e favoritos estão disponíveis offline. Para pesquisar novos filmes precisas de internet.';

  @override
  String get faqQChangeLanguage => 'Como altero o idioma?';

  @override
  String get faqAChangeLanguage =>
      'Vai a Definições → Idioma e escolhe entre os 12 disponíveis, ou usa o do sistema.';

  @override
  String get faqQChangeTheme => 'Como mudo entre modo claro e escuro?';

  @override
  String get faqAChangeTheme =>
      'Vai a Definições → Aparência e escolhe Claro, Escuro ou Auto.';

  @override
  String get faqQWatchTrailer => 'Como vejo um trailer?';

  @override
  String get faqAWatchTrailer =>
      'Abre os detalhes de um filme e toca em Ver Trailer. Abrirá no YouTube se estiver disponível.';

  @override
  String get faqQDeleteAccount => 'Como elimino a minha conta?';

  @override
  String get faqADeleteAccount =>
      'Vai a Perfil → Editar Perfil e procura Eliminar Conta. Os dados na nuvem serão apagados.';

  @override
  String get faqQContactSupport => 'Como contacto o suporte?';

  @override
  String get faqAContactSupport =>
      'Vai a Centro de Ajuda → Contacto e envia-nos uma mensagem; a tua app de e-mail abrirá.';

  @override
  String get contactUsTitle => 'Contacto';

  @override
  String get contactUsSubtitle =>
      'Tens alguma dúvida ou problema? Envia-nos uma mensagem e responderemos em breve.';

  @override
  String get contactSubjectLabel => 'Assunto';

  @override
  String get contactMessageLabel => 'Mensagem';

  @override
  String get contactSendAction => 'Enviar Mensagem';

  @override
  String get contactMailAppUnavailable =>
      'Nenhuma aplicação de e-mail encontrada.';

  @override
  String contactEmailBodyTemplate(String name, String email, String message) {
    return 'Nome: $name\nE-mail: $email\n\n$message';
  }

  @override
  String get feedbackTitle => 'Feedback';

  @override
  String get feedbackSubtitle => 'Como está a ser a tua experiência com a app?';

  @override
  String get feedbackCommentHint => 'Diz-nos mais (opcional)…';

  @override
  String get feedbackSendAction => 'Enviar Feedback';

  @override
  String get feedbackRatingRequired =>
      'Por favor, seleciona primeiro uma classificação.';

  @override
  String get feedbackThanks => 'Obrigado pelo teu feedback!';

  @override
  String get feedbackNoComment => '(Sem comentário)';

  @override
  String get feedbackEmailSubject => 'Feedback da App';

  @override
  String feedbackEmailBodyTemplate(int rating, String comment) {
    return 'Classificação: $rating/5\n\n$comment';
  }

  @override
  String get termsTitle => 'Termos de Serviço';

  @override
  String get privacyTitle => 'Política de Privacidade';

  @override
  String get legalLastUpdated => 'Última atualização: janeiro de 2026';

  @override
  String get termsSection1Title => '1. Aceitação dos Termos';

  @override
  String get termsSection1Body =>
      'Ao usar esta app, aceitas estes termos. Se não concordares, por favor não a uses.';

  @override
  String get termsSection2Title => '2. O Serviço';

  @override
  String get termsSection2Body =>
      'Esta app permite consultar info do TMDB. Não alojamos nem transmitimos conteúdos de vídeo diretamente.';

  @override
  String get termsSection3Title => '3. Contas';

  @override
  String get termsSection3Body =>
      'O uso como convidado é possível. Uma conta permite a sincronização. És responsável pela tua palavra-passe.';

  @override
  String get termsSection4Title => '4. O Teu Conteúdo';

  @override
  String get termsSection4Body =>
      'Os teus dados são teus. Guardamo-los para o serviço e não os vendemos.';

  @override
  String get termsSection5Title => '5. Dados de Terceiros';

  @override
  String get termsSection5Body =>
      'A info vem do TMDB e pode variar. A app usa a API mas não é certificada pelo TMDB.';

  @override
  String get termsSection6Title => '6. Rescisão';

  @override
  String get termsSection6Body =>
      'Podes apagar a conta quando quiseres. Podemos suspender o acesso em caso de abusos.';

  @override
  String get termsSection7Title => '7. Alterações aos Termos';

  @override
  String get termsSection7Body =>
      'Podemos atualizar estes termos. O uso continuado vale como aceitação.';

  @override
  String get privacySection1Title => '1. O Que Recolhemos';

  @override
  String get privacySection1Body =>
      'Em convidado, nenhuns dados pessoais. Com conta: nome, e-mail e foto opcional.';

  @override
  String get privacySection2Title => '2. Dados de Listas e Favoritos';

  @override
  String get privacySection2Body =>
      'Guardados de forma segura em Firestore e acessíveis apenas por ti.';

  @override
  String get privacySection3Title => '3. Serviços de Terceiros';

  @override
  String get privacySection3Body =>
      'TMDB para filmes e Firebase para dados. Têm as suas próprias políticas.';

  @override
  String get privacySection4Title => '4. Armazenamento Local';

  @override
  String get privacySection4Body =>
      'As tuas preferências são gravadas no dispositivo para um uso fluido.';

  @override
  String get privacySection5Title => '5. Eliminação de Dados';

  @override
  String get privacySection5Body =>
      'Apagar a conta remove os dados da nuvem. Os dados locais ficam até limpares a cache.';

  @override
  String get privacySection6Title => '6. Contacto';

  @override
  String get privacySection6Body =>
      'Dúvidas? Contacta-nos através do Centro de Ajuda.';
}
