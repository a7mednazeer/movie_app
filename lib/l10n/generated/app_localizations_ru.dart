// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTagline => 'ВАШ МИР КИНО';

  @override
  String get navHome => 'Главная';

  @override
  String get navSearch => 'Поиск';

  @override
  String get navBrowse => 'Обзор';

  @override
  String get navWatchlist => 'Список';

  @override
  String get navProfile => 'Профиль';

  @override
  String get sectionTrending => 'Сейчас в тренде';

  @override
  String get sectionPopular => 'Популярные фильмы';

  @override
  String get sectionTopRated => 'Лучшие оценки';

  @override
  String get sectionUpcoming => 'Скоро в кино';

  @override
  String get sectionRecommended => 'Рекомендовано вам';

  @override
  String get sectionCategories => 'Категории';

  @override
  String get seeAll => 'Смотреть все';

  @override
  String get moreLikeThis => 'Похожие фильмы';

  @override
  String get cast => 'Актёрский состав';

  @override
  String get reviews => 'Рецензии';

  @override
  String get noReviewsYet =>
      'Рецензий пока нет — станьте первым, кто поделится мнением.';

  @override
  String get overview => 'Обзор';

  @override
  String get watchTrailer => 'Смотреть трейлер';

  @override
  String get noTrailerAvailable => 'Трейлер для этого фильма пока недоступен.';

  @override
  String get trailerOpenFailed => 'Не удалось открыть трейлер.';

  @override
  String get addToWatchlist => 'Список';

  @override
  String get removedFromWatchlist => 'Удалено из списка';

  @override
  String get addedToWatchlist => 'Добавлено в список';

  @override
  String get share => 'Поделиться';

  @override
  String get readMore => 'Читать далее';

  @override
  String get readLess => 'Свернуть';

  @override
  String get searchHint => 'Фильмы, актёры, жанры…';

  @override
  String get recentSearches => 'Недавние поиски';

  @override
  String get trendingSearches => 'Популярные запросы';

  @override
  String get clearAll => 'Очистить всё';

  @override
  String get clearRecentSearchesMessage =>
      'Удалить все недавние запросы? Это действие нельзя отменить.';

  @override
  String get noResultsFound => 'Фильмы не найдены';

  @override
  String get noResultsSubtitle =>
      'Попробуйте другое название, актёра или жанр.';

  @override
  String get startSearching => 'Найдите свои любимые фильмы';

  @override
  String get startSearchingSubtitle =>
      'Ищите названия, изучайте актёров и открывайте новое.';

  @override
  String get browseCategory => 'Обзор категории';

  @override
  String get noCategoriesAvailable => 'Категории недоступны';

  @override
  String get checkBackLaterGenres =>
      'Зайдите позже, чтобы увидеть доступные жанры.';

  @override
  String get noMoviesInGenre => 'Фильмов пока нет';

  @override
  String get checkBackSoonGenre =>
      'В этом жанре пока ничего нет — загляните позже.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Мой список ($count)',
      many: 'Мой список ($count)',
      few: 'Мой список ($count)',
      one: 'Мой список ($count)',
      zero: 'Мой список',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'Ваш список пуст';

  @override
  String get watchlistEmptySubtitle =>
      'Сохраненные фильмы появятся здесь, чтобы вы их не потеряли.';

  @override
  String removedFromWatchlistSnack(String title) {
    return 'Удалено: \"$title\"';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Избранное ($count)',
      many: 'Избранное ($count)',
      few: 'Избранное ($count)',
      one: 'Избранное ($count)',
      zero: 'Избранное',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'В избранном пока пусто';

  @override
  String get favoritesEmptySubtitle =>
      'Фильмы, которые вы отметите как избранные, появятся здесь.';

  @override
  String removedFromFavoritesSnack(String title) {
    return '\"$title\" удалено из избранного';
  }

  @override
  String get undo => 'ОТМЕНИТЬ';

  @override
  String get retry => 'Повторить';

  @override
  String get genericErrorSubtitle =>
      'Произошла ошибка при загрузке контента. Попробуйте ещё раз.';

  @override
  String get noInternetSubtitle =>
      'Пожалуйста, проверьте соединение и попробуйте снова.';

  @override
  String get profileTitle => 'Профиль';

  @override
  String get yourLibrary => 'Ваша библиотека';

  @override
  String get everythingSaved => 'Всё сохраненное в одном месте';

  @override
  String get favoritesLabel => 'Избранное';

  @override
  String get watchlistLabel => 'Список';

  @override
  String get settingsLabel => 'Настройки';

  @override
  String get settingsSubtitle => 'Тема, язык и информация';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get appearance => 'Внешний вид';

  @override
  String get preferences => 'Предпочтения';

  @override
  String get languageLabel => 'Язык';

  @override
  String get aboutSection => 'О приложении';

  @override
  String get aboutThisApp => 'О приложении';

  @override
  String versionLabel(String version) {
    return 'Версия $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return 'О $appName';
  }

  @override
  String get aboutDescription =>
      'Премиальное приложение для поиска фильмов: изучайте тренды, популярные и высокооцененные картины, ищите и сохраняйте то, что хотите посмотреть.';

  @override
  String get tmdbAttribution =>
      'Этот продукт использует API TMDB, но не одобрен и не сертифицирован TMDB.';

  @override
  String get visitTmdb => 'Посетить TMDB';

  @override
  String get close => 'Закрыть';

  @override
  String get comingSoon => 'Скоро';

  @override
  String get themeLight => 'Светлая';

  @override
  String get themeDark => 'Тёмная';

  @override
  String get themeAuto => 'Авто';

  @override
  String get cancel => 'Отмена';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get removeLabel => 'Удалить';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — посмотрите трейлер: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Посмотрите \"$title\" в Movies!';
  }

  @override
  String get notificationsLabel => 'Уведомления';

  @override
  String get notificationsSubtitle => 'Управляйте своими уведомлениями';

  @override
  String get helpCenterLabel => 'Центр помощи';

  @override
  String get helpCenterSubtitle => 'FAQ, контакты и прочее';

  @override
  String get systemDefault => 'Системный язык';

  @override
  String get back => 'Назад';

  @override
  String get clear => 'Очистить';

  @override
  String get editInformation => 'Редактировать информацию';

  @override
  String get save => 'Сохранить';

  @override
  String get displayName => 'Имя пользователя';

  @override
  String get photoUrl => 'URL фото';

  @override
  String get enterName => 'Введите ваше имя';

  @override
  String get profileUpdated => 'Профиль успешно обновлен';

  @override
  String get signIn => 'Войти';

  @override
  String get signUp => 'Регистрация';

  @override
  String get welcomeBack => 'С возвращением';

  @override
  String get signInSubtitle =>
      'Войдите, чтобы синхронизировать ваши списки на всех устройствах.';

  @override
  String get createAccount => 'Создать аккаунт';

  @override
  String get signUpSubtitle =>
      'Зарегистрируйтесь, чтобы сохранять данные в своём аккаунте.';

  @override
  String get emailLabel => 'Email';

  @override
  String get passwordLabel => 'Пароль';

  @override
  String get confirmPasswordLabel => 'Подтвердите пароль';

  @override
  String get nameLabel => 'Имя';

  @override
  String get forgotPassword => 'Забыли пароль?';

  @override
  String get noAccountYet => 'Нет аккаунта? ';

  @override
  String get alreadyHaveAccount => 'Уже есть аккаунт? ';

  @override
  String get continueAsGuest => 'Продолжить как гость';

  @override
  String get authErrorFieldRequired => 'Это поле обязательно для заполнения.';

  @override
  String get authErrorInvalidEmail => 'Введите корректный email.';

  @override
  String get authErrorUserDisabled => 'Этот аккаунт отключен.';

  @override
  String get authErrorUserNotFound => 'Аккаунт с таким email не найден.';

  @override
  String get authErrorWrongPassword => 'Неверный email или пароль.';

  @override
  String get authErrorEmailInUse => 'Аккаунт с таким email уже существует.';

  @override
  String get authErrorWeakPassword => 'Слишком слабый пароль.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'Пароль должен содержать не менее $minLength символов.';
  }

  @override
  String get authErrorTooManyRequests =>
      'Слишком много попыток. Пожалуйста, подождите.';

  @override
  String get authErrorNotConfigured => 'Вход в систему ещё не настроен.';

  @override
  String get authErrorRequiresRecentLogin =>
      'Пожалуйста, войдите снова, чтобы продолжить.';

  @override
  String get authErrorPasswordMismatch => 'Пароли не совпадают.';

  @override
  String get authEnterEmailFirst => 'Сначала введите email выше.';

  @override
  String authResetEmailSent(String email) {
    return 'Письмо для сброса пароля отправлено на $email.';
  }

  @override
  String get authSyncBannerTitle => 'Войдите для синхронизации';

  @override
  String get authSyncBannerSubtitle =>
      'Сохраняйте данные в аккаунте и получайте доступ с любого устройства.';

  @override
  String get signOut => 'Выйти';

  @override
  String get signOutConfirmTitle => 'Выйти?';

  @override
  String get signOutConfirmMessage =>
      'Вы можете войти снова в любое время. Ваши данные сохранятся в аккаунте.';

  @override
  String get signedOutSnack => 'Вы вышли из системы';

  @override
  String get guestBadge => 'Гость';

  @override
  String get syncedToAccount => 'Синхронизировано с аккаунтом';

  @override
  String get localOnlyBanner =>
      'Сохранено только на этом устройстве — войдите для синхронизации';

  @override
  String get editProfile => 'Редактировать профиль';

  @override
  String get photoUrlLabel => 'URL фото';

  @override
  String get photoUrlFieldHint => 'https://example.com/photo.jpg';

  @override
  String get photoUrlHint =>
      'Вставьте ссылку на изображение. Оставьте пустым, чтобы удалить фото.';

  @override
  String get invalidUrlError =>
      'Введите корректный URL, начинающийся с http:// или https://.';

  @override
  String get saveChanges => 'Сохранить изменения';

  @override
  String get profileUpdatedSnack => 'Профиль обновлен';

  @override
  String get deleteAccountAction => 'Удалить аккаунт';

  @override
  String get deleteAccountConfirmTitle => 'Удалить аккаунт?';

  @override
  String get deleteAccountConfirmMessage =>
      'Это навсегда удалит ваш аккаунт. Данные останутся на этом устройстве, но не будут синхронизироваться. Это действие нельзя отменить.';

  @override
  String get accountDeletedSnack => 'Аккаунт удален';

  @override
  String get chatbotEntrySubtitle => 'Быстрые ответы от нашего FAQ-помощника';

  @override
  String get faqEntrySubtitle => 'Просмотр популярных вопросов и ответов';

  @override
  String get contactUsEntrySubtitle => 'Отправьте нам сообщение';

  @override
  String get feedbackEntrySubtitle => 'Оцените приложение и поделитесь мнением';

  @override
  String get aboutEntrySubtitle => 'Версия, авторы и правовая информация';

  @override
  String get chatbotTitle => 'Помощник';

  @override
  String get chatbotGreeting =>
      'Привет! Спрашивайте что угодно о работе приложения — я постараюсь помочь.';

  @override
  String get chatbotInputHint => 'Введите ваш вопрос…';

  @override
  String get chatbotNoMatch =>
      'Я не совсем уверен в ответе. Попробуйте перефразировать или свяжитесь с поддержкой.';

  @override
  String get chatbotContactHumanPrompt =>
      'Нужна помощь человека? Свяжитесь с нами';

  @override
  String get faqTitle => 'Часто задаваемые вопросы';

  @override
  String get faqSearchHint => 'Поиск в FAQ…';

  @override
  String get faqNoResultsSubtitle =>
      'Попробуйте другой запрос или спросите помощника.';

  @override
  String get faqQAboutApp => 'Что это за приложение?';

  @override
  String get faqAAboutApp =>
      'MOVIES — это приложение для поиска кино: изучайте тренды, ищите любые картины и сохраняйте то, что хотите посмотреть.';

  @override
  String get faqQSearch => 'Как искать фильм?';

  @override
  String get faqASearch =>
      'Нажмите на Поиск в меню, затем введите название, актёра или жанр. Результаты обновляются на лету.';

  @override
  String get faqQWatchlistVsFavorites =>
      'В чем разница между Списком и Избранным?';

  @override
  String get faqAWatchlistVsFavorites =>
      'Список — для фильмов, которые вы планируете посмотреть. Избранное — для тех, что вы уже любите.';

  @override
  String get faqQSaveMovie => 'Как сохранить фильм?';

  @override
  String get faqASaveMovie =>
      'Нажмите на иконку закладки на карточке фильма или используйте кнопки на странице деталей.';

  @override
  String get faqQNeedAccount =>
      'Нужен ли аккаунт для использования приложения?';

  @override
  String get faqANeedAccount =>
      'Нет — всё работает в гостевом режиме. Вход нужен для синхронизации между устройствами.';

  @override
  String get faqQSignIn => 'Как войти или создать аккаунт?';

  @override
  String get faqASignIn =>
      'Перейдите в Профиль и нажмите на баннер входа. Для регистрации нужны имя, email и пароль.';

  @override
  String get faqQSyncDevices => 'Как работает синхронизация?';

  @override
  String get faqASyncDevices =>
      'После входа ваши данные автоматически синхронизируются в реальном времени на всех устройствах.';

  @override
  String get faqQOffline => 'Работает ли приложение офлайн?';

  @override
  String get faqAOffline =>
      'Ваши списки доступны офлайн. Для поиска новых фильмов нужен интернет.';

  @override
  String get faqQChangeLanguage => 'Как сменить язык?';

  @override
  String get faqAChangeLanguage =>
      'Настройки → Язык, выберите один из 12 языков или системный.';

  @override
  String get faqQChangeTheme =>
      'Как переключиться между светлой и тёмной темой?';

  @override
  String get faqAChangeTheme =>
      'Настройки → Внешний вид, выберите Светлую, Тёмную или Авто.';

  @override
  String get faqQWatchTrailer => 'Как посмотреть трейлер?';

  @override
  String get faqAWatchTrailer =>
      'На странице деталей фильма нажмите Смотреть трейлер. Он откроется в YouTube.';

  @override
  String get faqQDeleteAccount => 'Как удалить аккаунт?';

  @override
  String get faqADeleteAccount =>
      'Профиль → Редактировать профиль → Удалить аккаунт. Облачные данные будут стерты навсегда.';

  @override
  String get faqQContactSupport => 'Как связаться с поддержкой?';

  @override
  String get faqAContactSupport =>
      'Центр помощи → Связаться с нами; откроется ваше почтовое приложение.';

  @override
  String get contactUsTitle => 'Связаться с нами';

  @override
  String get contactUsSubtitle =>
      'Есть вопросы или проблемы? Напишите нам, и мы ответим.';

  @override
  String get contactSubjectLabel => 'Тема';

  @override
  String get contactMessageLabel => 'Сообщение';

  @override
  String get contactSendAction => 'Отправить';

  @override
  String get contactMailAppUnavailable => 'Почтовое приложение не найдено.';

  @override
  String contactEmailBodyTemplate(String name, String email, String message) {
    return 'Имя: $name\nEmail: $email\n\n$message';
  }

  @override
  String get feedbackTitle => 'Отзыв';

  @override
  String get feedbackSubtitle => 'Как вам приложение?';

  @override
  String get feedbackCommentHint => 'Расскажите подробнее (необязательно)…';

  @override
  String get feedbackSendAction => 'Отправить отзыв';

  @override
  String get feedbackRatingRequired => 'Сначала выберите оценку.';

  @override
  String get feedbackThanks => 'Спасибо за ваш отзыв!';

  @override
  String get feedbackNoComment => '(Без комментария)';

  @override
  String get feedbackEmailSubject => 'Отзыв о приложении';

  @override
  String feedbackEmailBodyTemplate(int rating, String comment) {
    return 'Оценка: $rating/5\n\n$comment';
  }

  @override
  String get termsTitle => 'Условия использования';

  @override
  String get privacyTitle => 'Политика конфиденциальности';

  @override
  String get legalLastUpdated => 'Последнее обновление: январь 2026';

  @override
  String get termsSection1Title => '1. Принятие условий';

  @override
  String get termsSection1Body =>
      'Используя приложение, вы соглашаетесь с этими условиями. Если вы не согласны, не используйте его.';

  @override
  String get termsSection2Title => '2. Сервис';

  @override
  String get termsSection2Body =>
      'Приложение предоставляет инфо из TMDB. Мы не хостим и не транслируем видеоконтент сами.';

  @override
  String get termsSection3Title => '3. Аккаунты';

  @override
  String get termsSection3Body =>
      'Возможен гостевой вход. Аккаунт нужен для синхронизации. Вы отвечаете за безопасность пароля.';

  @override
  String get termsSection4Title => '4. Ваш контент';

  @override
  String get termsSection4Body =>
      'Ваши данные принадлежат вам. Мы храним их для работы сервиса и не продаем.';

  @override
  String get termsSection5Title => '5. Сторонние данные';

  @override
  String get termsSection5Body =>
      'Инфо предоставлена TMDB и может меняться. Приложение использует API, но не сертифицировано TMDB.';

  @override
  String get termsSection6Title => '6. Прекращение доступа';

  @override
  String get termsSection6Body =>
      'Вы можете удалить аккаунт в любое время. Мы можем ограничить доступ за нарушения.';

  @override
  String get termsSection7Title => '7. Изменения условий';

  @override
  String get termsSection7Body =>
      'Мы можем обновлять условия. Дальнейшее использование означает принятие обновлений.';

  @override
  String get privacySection1Title => '1. Что мы собираем';

  @override
  String get privacySection1Body =>
      'В гостевом режиме — ничего личного. С аккаунтом: имя, email и фото.';

  @override
  String get privacySection2Title => '2. Данные списков';

  @override
  String get privacySection2Body =>
      'Надежно хранятся в Firestore и доступны только вам.';

  @override
  String get privacySection3Title => '3. Сторонние сервисы';

  @override
  String get privacySection3Body =>
      'TMDB для инфо и Firebase для данных. У них свои политики.';

  @override
  String get privacySection4Title => '4. Локальное хранилище';

  @override
  String get privacySection4Body =>
      'Настройки хранятся на устройстве для мгновенной работы.';

  @override
  String get privacySection5Title => '5. Удаление данных';

  @override
  String get privacySection5Body =>
      'Удаление аккаунта стирает данные из облака. Локальные данные остаются до очистки кэша.';

  @override
  String get privacySection6Title => '6. Контакты';

  @override
  String get privacySection6Body =>
      'Вопросы? Свяжитесь с нами через Центр помощи.';
}
