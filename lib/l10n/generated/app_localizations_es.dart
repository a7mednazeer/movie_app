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
  String get sectionTrending => 'Tendencias ahora';

  @override
  String get sectionPopular => 'Películas populares';

  @override
  String get sectionTopRated => 'Mejor valoradas';

  @override
  String get sectionUpcoming => 'Próximamente';

  @override
  String get sectionRecommended => 'Recomendado para ti';

  @override
  String get sectionCategories => 'Categorías';

  @override
  String get seeAll => 'Ver todo';

  @override
  String get moreLikeThis => 'Más como esto';

  @override
  String get cast => 'Reparto';

  @override
  String get reviews => 'Reseñas';

  @override
  String get noReviewsYet =>
      'Aún no hay reseñas — sé el primero en compartir tu opinión.';

  @override
  String get overview => 'Sinopsis';

  @override
  String get watchTrailer => 'Ver tráiler';

  @override
  String get noTrailerAvailable =>
      'No hay tráiler disponible para este título todavía.';

  @override
  String get trailerOpenFailed => 'No se pudo abrir el tráiler.';

  @override
  String get addToWatchlist => 'Lista';

  @override
  String get removedFromWatchlist => 'Eliminado de la lista';

  @override
  String get addedToWatchlist => 'Añadido a la lista';

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
      '¿Eliminar todas tus búsquedas recientes? Esto no se puede deshacer.';

  @override
  String get noResultsFound => 'No se encontraron películas';

  @override
  String get noResultsSubtitle =>
      'Prueba con un título, actor o género diferente.';

  @override
  String get startSearching => 'Busca tus películas favoritas';

  @override
  String get startSearchingSubtitle =>
      'Encuentra títulos, explora el reparto y descubre algo nuevo.';

  @override
  String get browseCategory => 'Explorar categoría';

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
      other: 'Mi Lista ($count)',
      zero: 'Mi Lista',
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
      other: 'Favoritos ($count)',
      zero: 'Favoritos',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'Aún no hay favoritos';

  @override
  String get favoritesEmptySubtitle =>
      'Las películas que marques como favoritas aparecerán aquí.';

  @override
  String removedFromFavoritesSnack(String title) {
    return 'Se eliminó \"$title\" de favoritos';
  }

  @override
  String get undo => 'DESHACER';

  @override
  String get retry => 'Reintentar';

  @override
  String get genericErrorSubtitle =>
      'Hubo un problema al cargar este contenido. Inténtalo de nuevo.';

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
  String get favoritesLabel => 'Favoritos';

  @override
  String get watchlistLabel => 'Lista';

  @override
  String get settingsLabel => 'Ajustes';

  @override
  String get settingsSubtitle => 'Tema, idioma e información';

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
  String get aboutThisApp => 'Acerca de esta aplicación';

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
      'Una aplicación premium para descubrir películas: explora títulos en tendencia, populares y mejor valorados, busca y haz un seguimiento de lo que quieres ver.';

  @override
  String get tmdbAttribution =>
      'Este producto utiliza la API de TMDB pero no está avalado ni certificado por TMDB.';

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
  String get themeAuto => 'Auto';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

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
  String get notificationsSubtitle => 'Gestiona tus notificaciones';

  @override
  String get helpCenterLabel => 'Centro de ayuda';

  @override
  String get helpCenterSubtitle => 'Preguntas frecuentes, contacto y más';

  @override
  String get systemDefault => 'Predeterminado del sistema';

  @override
  String get back => 'Atrás';

  @override
  String get clear => 'Limpiar';

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
      'Inicia sesión para sincronizar tu lista y favoritos en todos tus dispositivos.';

  @override
  String get createAccount => 'Crear cuenta';

  @override
  String get signUpSubtitle =>
      'Regístrate para guardar tu lista y favoritos en tu cuenta.';

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
  String get noAccountYet => '¿No tienes una cuenta? ';

  @override
  String get alreadyHaveAccount => '¿Ya tienes una cuenta? ';

  @override
  String get continueAsGuest => 'Continuar como invitado';

  @override
  String get authErrorFieldRequired => 'Este campo es obligatorio.';

  @override
  String get authErrorInvalidEmail => 'Introduce un correo electrónico válido.';

  @override
  String get authErrorUserDisabled => 'Esta cuenta ha sido desactivada.';

  @override
  String get authErrorUserNotFound =>
      'No se encontró ninguna cuenta con ese correo.';

  @override
  String get authErrorWrongPassword => 'Correo o contraseña incorrectos.';

  @override
  String get authErrorEmailInUse => 'Ya existe una cuenta con ese correo.';

  @override
  String get authErrorWeakPassword => 'La contraseña es demasiado débil.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'La contraseña debe tener al menos $minLength caracteres.';
  }

  @override
  String get authErrorTooManyRequests =>
      'Demasiados intentos. Espera un momento e inténtalo de nuevo.';

  @override
  String get authErrorNotConfigured =>
      'El inicio de sesión no está configurado aún.';

  @override
  String get authErrorRequiresRecentLogin =>
      'Inicia sesión de nuevo para continuar.';

  @override
  String get authErrorPasswordMismatch => 'Las contraseñas no coinciden.';

  @override
  String get authEnterEmailFirst => 'Introduce tu correo arriba primero.';

  @override
  String authResetEmailSent(String email) {
    return 'Correo de restablecimiento enviado a $email.';
  }

  @override
  String get authSyncBannerTitle => 'Inicia sesión para sincronizar';

  @override
  String get authSyncBannerSubtitle =>
      'Guarda tu lista y favoritos en tu cuenta y accede a ellos en cualquier dispositivo.';

  @override
  String get signOut => 'Cerrar sesión';

  @override
  String get signOutConfirmTitle => '¿Cerrar sesión?';

  @override
  String get signOutConfirmMessage =>
      'Puedes volver a entrar en cualquier momento. Tu lista y favoritos se quedan guardados en tu cuenta.';

  @override
  String get signedOutSnack => 'Sesión cerrada';

  @override
  String get guestBadge => 'Invitado';

  @override
  String get syncedToAccount => 'Sincronizado con tu cuenta';

  @override
  String get localOnlyBanner =>
      'Guardado solo en este dispositivo — inicia sesión para sincronizar';

  @override
  String get editProfile => 'Editar perfil';

  @override
  String get photoUrlLabel => 'URL de la foto';

  @override
  String get photoUrlFieldHint => 'https://example.com/photo.jpg';

  @override
  String get photoUrlHint =>
      'Pega un enlace a una imagen. Déjalo en blanco para quitar tu foto.';

  @override
  String get invalidUrlError =>
      'Introduce una URL de imagen válida que empiece por http:// o https://.';

  @override
  String get saveChanges => 'Guardar cambios';

  @override
  String get profileUpdatedSnack => 'Perfil actualizado';

  @override
  String get deleteAccountAction => 'Eliminar cuenta';

  @override
  String get deleteAccountConfirmTitle => '¿Eliminar tu cuenta?';

  @override
  String get deleteAccountConfirmMessage =>
      'Esto eliminará permanentemente tu cuenta y acceso. Tu lista y favoritos se quedan en este dispositivo pero dejarán de sincronizarse. Esto no se puede deshacer.';

  @override
  String get accountDeletedSnack => 'Cuenta eliminada';

  @override
  String get chatbotEntrySubtitle => 'Respuestas rápidas de nuestro asistente';

  @override
  String get faqEntrySubtitle => 'Explora preguntas y respuestas comunes';

  @override
  String get contactUsEntrySubtitle => 'Envíanos un mensaje';

  @override
  String get feedbackEntrySubtitle => 'Valora la app y dinos qué piensas';

  @override
  String get aboutEntrySubtitle => 'Versión, créditos y legal';

  @override
  String get chatbotTitle => 'Asistente de ayuda';

  @override
  String get chatbotGreeting =>
      '¡Hola! Pregúntame lo que quieras sobre la app e intentaré ayudarte.';

  @override
  String get chatbotInputHint => 'Escribe tu pregunta…';

  @override
  String get chatbotNoMatch =>
      'No estoy seguro de eso. Prueba a decirlo de otra forma, consulta las preguntas frecuentes o contáctanos.';

  @override
  String get chatbotContactHumanPrompt => '¿Necesitas una persona? Contáctanos';

  @override
  String get faqTitle => 'Preguntas frecuentes';

  @override
  String get faqSearchHint => 'Buscar en preguntas frecuentes…';

  @override
  String get faqNoResultsSubtitle =>
      'Prueba con otro término o pregunta al asistente.';

  @override
  String get faqQAboutApp => '¿Qué es esta aplicación?';

  @override
  String get faqAAboutApp =>
      'MOVIES es una app para descubrir películas: explora tendencias, populares y mejor valoradas, busca y guarda lo que quieras ver.';

  @override
  String get faqQSearch => '¿Cómo busco una película?';

  @override
  String get faqASearch =>
      'Toca en Buscar en el menú inferior y escribe el título, actor o género. Los resultados aparecen mientras escribes.';

  @override
  String get faqQWatchlistVsFavorites =>
      '¿Cuál es la diferencia entre Lista y Favoritos?';

  @override
  String get faqAWatchlistVsFavorites =>
      'La Lista es para películas que quieres ver. Favoritos es para las que ya te encantan. Se guardan por separado.';

  @override
  String get faqQSaveMovie => '¿Cómo guardo una película?';

  @override
  String get faqASaveMovie =>
      'Toca el icono de marcador en cualquier película o usa los botones en la página de detalles.';

  @override
  String get faqQNeedAccount => '¿Necesito una cuenta para usar la aplicación?';

  @override
  String get faqANeedAccount =>
      'No — todo funciona como invitado, guardándose en tu dispositivo. Iniciar sesión añade la sincronización entre dispositivos.';

  @override
  String get faqQSignIn => '¿Cómo inicio sesión o creo una cuenta?';

  @override
  String get faqASignIn =>
      'Ve a Perfil y toca el banner de inicio de sesión. Solo necesitas nombre, correo y contraseña.';

  @override
  String get faqQSyncDevices => '¿Cómo funciona la sincronización?';

  @override
  String get faqASyncDevices =>
      'Al iniciar sesión, tus datos se sincronizan automáticamente en la nube y aparecen en cualquier dispositivo con tu cuenta.';

  @override
  String get faqQOffline => '¿Funciona sin conexión?';

  @override
  String get faqAOffline =>
      'Tu lista y favoritos están disponibles sin conexión. Para buscar películas nuevas sí necesitas internet.';

  @override
  String get faqQChangeLanguage => '¿Cómo cambio el idioma?';

  @override
  String get faqAChangeLanguage =>
      'Ve a Ajustes → Idioma y elige entre los 12 disponibles, o usa el del sistema.';

  @override
  String get faqQChangeTheme => '¿Cómo cambio entre modo claro y oscuro?';

  @override
  String get faqAChangeTheme =>
      'Ve a Ajustes → Apariencia y elige Claro, Oscuro o Auto.';

  @override
  String get faqQWatchTrailer => '¿Cómo veo un tráiler?';

  @override
  String get faqAWatchTrailer =>
      'En la página de detalles de una película, toca Ver Tráiler. Se abrirá en YouTube si está disponible.';

  @override
  String get faqQDeleteAccount => '¿Cómo elimino mi cuenta?';

  @override
  String get faqADeleteAccount =>
      'Ve a Perfil → Editar perfil y busca Eliminar cuenta. Se borrará tu cuenta de la nube permanentemente.';

  @override
  String get faqQContactSupport => '¿Cómo contacto con soporte?';

  @override
  String get faqAContactSupport =>
      'Ve a Centro de ayuda → Contacto y envíanos un mensaje; se abrirá tu app de correo.';

  @override
  String get contactUsTitle => 'Contacto';

  @override
  String get contactUsSubtitle =>
      '¿Tienes alguna duda o problema? Envíanos un mensaje y te responderemos.';

  @override
  String get contactSubjectLabel => 'Asunto';

  @override
  String get contactMessageLabel => 'Mensaje';

  @override
  String get contactSendAction => 'Enviar mensaje';

  @override
  String get contactMailAppUnavailable =>
      'No se encontró ninguna app de correo.';

  @override
  String contactEmailBodyTemplate(String name, String email, String message) {
    return 'Nombre: $name\nCorreo: $email\n\n$message';
  }

  @override
  String get feedbackTitle => 'Sugerencias';

  @override
  String get feedbackSubtitle => '¿Qué te parece la aplicación?';

  @override
  String get feedbackCommentHint => 'Cuéntanos más (opcional)…';

  @override
  String get feedbackSendAction => 'Enviar sugerencias';

  @override
  String get feedbackRatingRequired =>
      'Por favor, selecciona una puntuación primero.';

  @override
  String get feedbackThanks => '¡Gracias por tus comentarios!';

  @override
  String get feedbackNoComment => '(Sin comentarios)';

  @override
  String get feedbackEmailSubject => 'Sugerencias sobre la app';

  @override
  String feedbackEmailBodyTemplate(int rating, String comment) {
    return 'Puntuación: $rating/5\n\n$comment';
  }

  @override
  String get termsTitle => 'Términos de servicio';

  @override
  String get privacyTitle => 'Política de privacidad';

  @override
  String get legalLastUpdated => 'Última actualización: enero 2026';

  @override
  String get termsSection1Title => '1. Aceptación de los términos';

  @override
  String get termsSection1Body =>
      'Al usar esta app, aceptas estos términos. Si no estás de acuerdo, no la uses.';

  @override
  String get termsSection2Title => '2. El servicio';

  @override
  String get termsSection2Body =>
      'Esta app permite consultar información de TMDB. No alojamos ni transmitimos contenido de vídeo directamente.';

  @override
  String get termsSection3Title => '3. Cuentas';

  @override
  String get termsSection3Body =>
      'Puedes usar la app como invitado. Una cuenta permite sincronizar tus datos. Eres responsable de tu contraseña.';

  @override
  String get termsSection4Title => '4. Tu contenido';

  @override
  String get termsSection4Body =>
      'Tus datos son tuyos. Los guardamos para darte el servicio y no los vendemos.';

  @override
  String get termsSection5Title => '5. Datos de terceros';

  @override
  String get termsSection5Body =>
      'La información proviene de TMDB y puede variar. Este producto usa la API de TMDB pero no está avalado por ellos.';

  @override
  String get termsSection6Title => '6. Terminación';

  @override
  String get termsSection6Body =>
      'Puedes borrar tu cuenta cuando quieras. Podemos suspender el acceso si se violan los términos.';

  @override
  String get termsSection7Title => '7. Cambios en los términos';

  @override
  String get termsSection7Body =>
      'Podemos actualizar estos términos. Seguir usando la app implica aceptarlos.';

  @override
  String get privacySection1Title => '1. Qué recopilamos';

  @override
  String get privacySection1Body =>
      'Como invitado no recopilamos datos personales. Con cuenta, guardamos nombre, correo y foto opcional.';

  @override
  String get privacySection2Title => '2. Datos de listas y favoritos';

  @override
  String get privacySection2Body =>
      'Se guardan en Firestore de forma segura y solo tú puedes acceder a ellos.';

  @override
  String get privacySection3Title => '3. Servicios de terceros';

  @override
  String get privacySection3Body =>
      'Usamos TMDB para la info y Firebase para los datos. Tienen sus propias políticas.';

  @override
  String get privacySection4Title => '4. Almacenamiento local';

  @override
  String get privacySection4Body =>
      'Guardamos tus preferencias en el dispositivo para que funcione sin conexión.';

  @override
  String get privacySection5Title => '5. Borrado de datos';

  @override
  String get privacySection5Body =>
      'Puedes borrar tu cuenta en Ajustes. Los datos locales se borran al limpiar la caché de la app.';

  @override
  String get privacySection6Title => '6. Contacto';

  @override
  String get privacySection6Body =>
      '¿Dudas? Contáctanos a través del Centro de ayuda.';
}
