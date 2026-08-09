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
  String get sectionTrending => 'В тренде';

  @override
  String get sectionPopular => 'Популярные фильмы';

  @override
  String get sectionTopRated => 'Высокий рейтинг';

  @override
  String get sectionUpcoming => 'Скоро выйдет';

  @override
  String get sectionRecommended => 'Рекомендуем вам';

  @override
  String get sectionCategories => 'Категории';

  @override
  String get seeAll => 'Смотреть все';

  @override
  String get moreLikeThis => 'Похожие фильмы';

  @override
  String get cast => 'В ролях';

  @override
  String get reviews => 'Отзывы';

  @override
  String get noReviewsYet =>
      'Отзывов пока нет — станьте первым, кто поделится своим мнением.';

  @override
  String get overview => 'Описание';

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
  String get searchHint => 'Поиск фильмов, актёров, жанров…';

  @override
  String get recentSearches => 'Недавние запросы';

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
      'Ищите фильмы, изучайте актёрский состав и находите новое.';

  @override
  String get browseCategory => 'Категории';

  @override
  String get noCategoriesAvailable => 'Категории недоступны';

  @override
  String get checkBackLaterGenres =>
      'Загляните позже, чтобы увидеть доступные жанры.';

  @override
  String get noMoviesInGenre => 'Пока нет фильмов';

  @override
  String get checkBackSoonGenre => 'В этом жанре пока пусто — загляните позже.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Мой список ($count)',
      zero: 'Мой список',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'Ваш список пуст';

  @override
  String get watchlistEmptySubtitle =>
      'Сохранённые фильмы появятся здесь, чтобы вы о них не забыли.';

  @override
  String removedFromWatchlistSnack(String title) {
    return '«$title» удалён';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Избранное ($count)',
      zero: 'Избранное',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'Пока нет избранного';

  @override
  String get favoritesEmptySubtitle =>
      'Фильмы, отмеченные как избранные на странице фильма, появятся здесь.';

  @override
  String removedFromFavoritesSnack(String title) {
    return '«$title» удалён из избранного';
  }

  @override
  String get undo => 'ОТМЕНИТЬ';

  @override
  String get retry => 'Повторить';

  @override
  String get genericErrorSubtitle =>
      'Не удалось загрузить контент. Попробуйте ещё раз.';

  @override
  String get noInternetSubtitle =>
      'Проверьте подключение к интернету и повторите попытку.';

  @override
  String get profileTitle => 'Профиль';

  @override
  String get yourLibrary => 'Ваша библиотека';

  @override
  String get everythingSaved => 'Всё сохранённое в одном месте';

  @override
  String get favoritesLabel => 'Избранное';

  @override
  String get watchlistLabel => 'Список';

  @override
  String get settingsLabel => 'Настройки';

  @override
  String get settingsSubtitle => 'Тема, язык и другое';

  @override
  String get settingsTitle => 'Настройки';

  @override
  String get appearance => 'Оформление';

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
    return 'О приложении $appName';
  }

  @override
  String get aboutDescription =>
      'Приложение для поиска фильмов: тренды, популярные и высокорейтинговые фильмы, поиск и список того, что вы хотите посмотреть.';

  @override
  String get tmdbAttribution =>
      'Этот продукт использует API TMDB, но не одобрен и не сертифицирован TMDB.';

  @override
  String get visitTmdb => 'Перейти на TMDB';

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
    return '$title — посмотри трейлер: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Посмотри «$title» в Movies!';
  }

  @override
  String get notificationsLabel => 'Уведомления';

  @override
  String get notificationsSubtitle => 'Настройте, о чём вас уведомлять';

  @override
  String get helpCenterLabel => 'Центр помощи';

  @override
  String get helpCenterSubtitle => 'Вопросы, связь с нами и другое';

  @override
  String get systemDefault => 'Как в системе';

  @override
  String get back => 'Назад';

  @override
  String get clear => 'Очистить';

  @override
  String get editInformation => 'Редактировать информацию';

  @override
  String get save => 'Сохранить';

  @override
  String get displayName => 'Отображаемое имя';

  @override
  String get photoUrl => 'URL фотографии';

  @override
  String get photoUrlHint => 'https://example.com/avatar.jpg';

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
      'Войдите, чтобы синхронизировать список и избранное на всех устройствах.';

  @override
  String get createAccount => 'Создать аккаунт';

  @override
  String get signUpSubtitle =>
      'Зарегистрируйтесь, чтобы сохранить список и избранное в своём аккаунте.';

  @override
  String get emailLabel => 'Эл. почта';

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
  String get authErrorFieldRequired => 'Это поле обязательно.';

  @override
  String get authErrorInvalidEmail => 'Введите корректный адрес эл. почты.';

  @override
  String get authErrorUserDisabled => 'Этот аккаунт отключён.';

  @override
  String get authErrorUserNotFound => 'Аккаунт с такой почтой не найден.';

  @override
  String get authErrorWrongPassword => 'Неверная почта или пароль.';

  @override
  String get authErrorEmailInUse => 'Аккаунт с такой почтой уже существует.';

  @override
  String get authErrorWeakPassword => 'Этот пароль слишком слабый.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'Пароль должен содержать не менее $minLength символов.';
  }

  @override
  String get authErrorTooManyRequests =>
      'Слишком много попыток. Подождите немного и повторите попытку.';

  @override
  String get authErrorNotConfigured =>
      'Вход пока не настроен для этого приложения.';

  @override
  String get authErrorRequiresRecentLogin =>
      'Пожалуйста, войдите снова, чтобы продолжить.';

  @override
  String get authErrorPasswordMismatch => 'Пароли не совпадают.';

  @override
  String get authEnterEmailFirst => 'Сначала введите свою эл. почту выше.';

  @override
  String authResetEmailSent(String email) {
    return 'Письмо для сброса пароля отправлено на $email.';
  }

  @override
  String get authSyncBannerTitle => 'Войдите для синхронизации';

  @override
  String get authSyncBannerSubtitle =>
      'Сохраните список и избранное в своём аккаунте и получайте к ним доступ с любого устройства.';

  @override
  String get signOut => 'Выйти';

  @override
  String get signOutConfirmTitle => 'Выйти из аккаунта?';

  @override
  String get signOutConfirmMessage =>
      'Вы сможете снова войти в любой момент. Ваш список и избранное останутся сохранены в аккаунте.';

  @override
  String get signedOutSnack => 'Вы вышли из аккаунта';

  @override
  String get guestBadge => 'Гость';

  @override
  String get syncedToAccount => 'Синхронизировано с вашим аккаунтом';

  @override
  String get localOnlyBanner =>
      'Сохранено только на этом устройстве — войдите, чтобы синхронизировать между устройствами';
}
