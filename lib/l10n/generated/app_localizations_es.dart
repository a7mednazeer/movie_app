// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTagline => 'TU MUNDO DE CINE';

  @override
  String get navHome => 'Inicio';

  @override
  String get navSearch => 'Buscar';

  @override
  String get navBrowse => 'Explorar';

  @override
  String get navWatchlist => 'Lista';

  @override
  String get navProfile => 'Perfil';

  @override
  String get sectionTrending => 'Tendencias';

  @override
  String get sectionPopular => 'Películas populares';

  @override
  String get sectionTopRated => 'Mejor valoradas';

  @override
  String get sectionUpcoming => 'Próximamente';

  @override
  String get sectionRecommended => 'Recomendadas para ti';

  @override
  String get sectionCategories => 'Categorías';

  @override
  String get seeAll => 'Ver todo';

  @override
  String get moreLikeThis => 'Más como esta';

  @override
  String get cast => 'Reparto';

  @override
  String get reviews => 'Reseñas';

  @override
  String get noReviewsYet =>
      'No reviews yet — be the first to share your thoughts.';

  @override
  String get overview => 'Sinopsis';

  @override
  String get watchTrailer => 'Ver tráiler';

  @override
  String get noTrailerAvailable =>
      'Aún no hay tráiler disponible para este título.';

  @override
  String get trailerOpenFailed => 'No se pudo abrir el tráiler.';

  @override
  String get addToWatchlist => 'Lista';

  @override
  String get removedFromWatchlist => 'Eliminada de la lista';

  @override
  String get addedToWatchlist => 'Añadida a la lista';

  @override
  String get share => 'Compartir';

  @override
  String get readMore => 'Leer más';

  @override
  String get readLess => 'Leer menos';

  @override
  String get searchHint => 'Busca películas, actores, géneros…';

  @override
  String get recentSearches => 'Búsquedas recientes';

  @override
  String get trendingSearches => 'Búsquedas populares';

  @override
  String get clearAll => 'Borrar todo';

  @override
  String get clearRecentSearchesMessage =>
      '¿Eliminar todas tus búsquedas recientes? Esta acción no se puede deshacer.';

  @override
  String get noResultsFound => 'No se encontraron películas';

  @override
  String get noResultsSubtitle => 'Prueba con otro título, actor o género.';

  @override
  String get startSearching => 'Busca tus películas favoritas';

  @override
  String get startSearchingSubtitle =>
      'Encuentra títulos, explora el reparto y descubre algo nuevo.';

  @override
  String get browseCategory => 'Explorar categorías';

  @override
  String get noCategoriesAvailable => 'No hay categorías disponibles';

  @override
  String get checkBackLaterGenres =>
      'Vuelve más tarde para ver los géneros disponibles.';

  @override
  String get noMoviesInGenre => 'Aún no hay películas';

  @override
  String get checkBackSoonGenre =>
      'No hay nada en este género por ahora — vuelve pronto.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Mi lista ($count)',
      zero: 'Mi lista',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'Tu lista está vacía';

  @override
  String get watchlistEmptySubtitle =>
      'Las películas que guardes aparecerán aquí para que nunca las pierdas de vista.';

  @override
  String removedFromWatchlistSnack(String title) {
    return 'Se eliminó \"$title\"';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Favoritas ($count)',
      zero: 'Favoritas',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'Aún no tienes favoritas';

  @override
  String get favoritesEmptySubtitle =>
      'Las películas que marques como favoritas desde los detalles aparecerán aquí.';

  @override
  String removedFromFavoritesSnack(String title) {
    return 'Se eliminó \"$title\" de favoritas';
  }

  @override
  String get undo => 'DESHACER';

  @override
  String get retry => 'Reintentar';

  @override
  String get genericErrorSubtitle =>
      'Tuvimos un problema al cargar este contenido. Inténtalo de nuevo.';

  @override
  String get noInternetSubtitle =>
      'Comprueba tu conexión e inténtalo de nuevo.';

  @override
  String get profileTitle => 'Perfil';

  @override
  String get yourLibrary => 'Tu biblioteca';

  @override
  String get everythingSaved => 'Todo lo que has guardado, en un solo lugar';

  @override
  String get favoritesLabel => 'Favoritas';

  @override
  String get watchlistLabel => 'Lista';

  @override
  String get settingsLabel => 'Ajustes';

  @override
  String get settingsSubtitle => 'Tema, idioma y más';

  @override
  String get settingsTitle => 'Ajustes';

  @override
  String get appearance => 'Apariencia';

  @override
  String get preferences => 'Preferencias';

  @override
  String get languageLabel => 'Idioma';

  @override
  String get aboutSection => 'Acerca de';

  @override
  String get aboutThisApp => 'Acerca de esta app';

  @override
  String versionLabel(String version) {
    return 'Versión $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return 'Acerca de $appName';
  }

  @override
  String get aboutDescription =>
      'Una app premium para descubrir películas: explora tendencias, populares y mejor valoradas, busca y lleva el control de lo que quieres ver.';

  @override
  String get tmdbAttribution =>
      'Este producto usa la API de TMDB, pero no está respaldado ni certificado por TMDB.';

  @override
  String get visitTmdb => 'Visitar TMDB';

  @override
  String get close => 'Cerrar';

  @override
  String get comingSoon => 'Próximamente';

  @override
  String get themeLight => 'Claro';

  @override
  String get themeDark => 'Oscuro';

  @override
  String get themeAuto => 'Automático';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirm';

  @override
  String get removeLabel => 'Eliminar';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — mira el tráiler: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return '¡Mira \"$title\" en Movies!';
  }

  @override
  String get notificationsLabel => 'Notificaciones';

  @override
  String get notificationsSubtitle => 'Administra sobre qué se te notifica';

  @override
  String get helpCenterLabel => 'Centro de ayuda';

  @override
  String get helpCenterSubtitle => 'Preguntas frecuentes, contacto y más';

  @override
  String get systemDefault => 'Predeterminado del sistema';

  @override
  String get back => 'Atrás';

  @override
  String get clear => 'Borrar';

  @override
  String get editInformation => 'Editar información';

  @override
  String get save => 'Guardar';

  @override
  String get displayName => 'Nombre visible';

  @override
  String get photoUrl => 'URL de la foto';

  @override
  String get enterName => 'Introduce tu nombre';

  @override
  String get profileUpdated => 'Perfil actualizado con éxito';

  @override
  String get signIn => 'Iniciar sesión';

  @override
  String get signUp => 'Registrarse';

  @override
  String get welcomeBack => 'Bienvenido de nuevo';

  @override
  String get signInSubtitle =>
      'Inicia sesión para sincronizar tu lista y favoritas entre dispositivos.';

  @override
  String get createAccount => 'Crear cuenta';

  @override
  String get signUpSubtitle =>
      'Regístrate para guardar tu lista y favoritas en tu cuenta.';

  @override
  String get emailLabel => 'Correo electrónico';

  @override
  String get passwordLabel => 'Contraseña';

  @override
  String get confirmPasswordLabel => 'Confirmar contraseña';

  @override
  String get nameLabel => 'Nombre';

  @override
  String get forgotPassword => '¿Olvidaste tu contraseña?';

  @override
  String get noAccountYet => '¿No tienes cuenta? ';

  @override
  String get alreadyHaveAccount => '¿Ya tienes cuenta? ';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get authErrorFieldRequired => 'Este campo es obligatorio.';

  @override
  String get authErrorInvalidEmail => 'Introduce un correo electrónico válido.';

  @override
  String get authErrorUserDisabled => 'Esta cuenta ha sido deshabilitada.';

  @override
  String get authErrorUserNotFound =>
      'No se encontró ninguna cuenta con ese correo.';

  @override
  String get authErrorWrongPassword => 'Correo o contraseña incorrectos.';

  @override
  String get authErrorEmailInUse => 'Ya existe una cuenta con ese correo.';

  @override
  String get authErrorWeakPassword => 'Esa contraseña es demasiado débil.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'La contraseña debe tener al menos $minLength caracteres.';
  }

  @override
  String get authErrorTooManyRequests =>
      'Demasiados intentos. Espera un momento e inténtalo de nuevo.';

  @override
  String get authErrorNotConfigured =>
      'El inicio de sesión aún no está configurado para esta app.';

  @override
  String get authErrorRequiresRecentLogin =>
      'Vuelve a iniciar sesión para continuar.';

  @override
  String get authErrorPasswordMismatch => 'Las contraseñas no coinciden.';

  @override
  String get authEnterEmailFirst =>
      'Primero introduce tu correo electrónico arriba.';

  @override
  String authResetEmailSent(String email) {
    return 'Se envió un correo para restablecer la contraseña a $email.';
  }

  @override
  String get authSyncBannerTitle => 'Inicia sesión para sincronizar';

  @override
  String get authSyncBannerSubtitle =>
      'Guarda tu lista y favoritas en tu cuenta y accede a ellas desde cualquier dispositivo.';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get signOutConfirmTitle => '¿Cerrar sesión?';

  @override
  String get signOutConfirmMessage =>
      'Puedes volver a iniciar sesión cuando quieras. Tu lista y favoritas seguirán guardadas en tu cuenta.';

  @override
  String get signedOutSnack => 'Sesión cerrada';

  @override
  String get guestBadge => 'Invitado';
}
