import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('it'),
    Locale('ko'),
    Locale('nl'),
    Locale('pt'),
    Locale('ru'),
    Locale('tr'),
    Locale('zh')
  ];

  /// Tagline shown under the logo on the splash screen.
  ///
  /// In en, this message translates to:
  /// **'YOUR WORLD OF CINEMA'**
  String get appTagline;

  /// Bottom navigation label.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get navHome;

  /// Bottom navigation label, and Search screen app bar title.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get navSearch;

  /// Bottom navigation label.
  ///
  /// In en, this message translates to:
  /// **'Browse'**
  String get navBrowse;

  /// Bottom navigation label.
  ///
  /// In en, this message translates to:
  /// **'Watchlist'**
  String get navWatchlist;

  /// Semantic label for the profile icon button in Home's app bar.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get navProfile;

  /// Home screen section header.
  ///
  /// In en, this message translates to:
  /// **'Trending Now'**
  String get sectionTrending;

  /// Home screen section header.
  ///
  /// In en, this message translates to:
  /// **'Popular Movies'**
  String get sectionPopular;

  /// Home screen section header.
  ///
  /// In en, this message translates to:
  /// **'Top Rated'**
  String get sectionTopRated;

  /// Home screen section header.
  ///
  /// In en, this message translates to:
  /// **'Upcoming'**
  String get sectionUpcoming;

  /// Home screen section header.
  ///
  /// In en, this message translates to:
  /// **'Recommended For You'**
  String get sectionRecommended;

  /// Home screen section header, above the genre chips.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get sectionCategories;

  /// Section header trailing action.
  ///
  /// In en, this message translates to:
  /// **'See All'**
  String get seeAll;

  /// Movie Details section header for similar movies.
  ///
  /// In en, this message translates to:
  /// **'More Like This'**
  String get moreLikeThis;

  /// Movie Details section header.
  ///
  /// In en, this message translates to:
  /// **'Cast'**
  String get cast;

  /// Movie Details section header.
  ///
  /// In en, this message translates to:
  /// **'Reviews'**
  String get reviews;

  /// Reviews section empty state message.
  ///
  /// In en, this message translates to:
  /// **'No reviews yet — be the first to share your thoughts.'**
  String get noReviewsYet;

  /// Movie Details section header for the synopsis.
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get overview;

  /// Movie Details action button label.
  ///
  /// In en, this message translates to:
  /// **'Watch Trailer'**
  String get watchTrailer;

  /// Snackbar shown when a movie has no trailer key available.
  ///
  /// In en, this message translates to:
  /// **'No trailer available for this title yet.'**
  String get noTrailerAvailable;

  /// Snackbar shown when launching the trailer URL fails.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open the trailer.'**
  String get trailerOpenFailed;

  /// Movie Details action button label for toggling the watchlist.
  ///
  /// In en, this message translates to:
  /// **'Watchlist'**
  String get addToWatchlist;

  /// Snackbar text (no title) after un-saving from Movie Details.
  ///
  /// In en, this message translates to:
  /// **'Removed from watchlist'**
  String get removedFromWatchlist;

  /// Snackbar text after saving from Movie Details.
  ///
  /// In en, this message translates to:
  /// **'Added to watchlist'**
  String get addedToWatchlist;

  /// Movie Details action button label.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// Expandable description toggle, collapsed state.
  ///
  /// In en, this message translates to:
  /// **'Read more'**
  String get readMore;

  /// Expandable description toggle, expanded state.
  ///
  /// In en, this message translates to:
  /// **'Read less'**
  String get readLess;

  /// Search field placeholder text.
  ///
  /// In en, this message translates to:
  /// **'Search movies, actors, genres…'**
  String get searchHint;

  /// Search screen section header.
  ///
  /// In en, this message translates to:
  /// **'Recent Searches'**
  String get recentSearches;

  /// Search screen section header for suggestion chips.
  ///
  /// In en, this message translates to:
  /// **'Trending Searches'**
  String get trendingSearches;

  /// Button to clear all recent searches, and the confirm dialog's title.
  ///
  /// In en, this message translates to:
  /// **'Clear All'**
  String get clearAll;

  /// Confirm dialog body for clearing recent searches.
  ///
  /// In en, this message translates to:
  /// **'Remove all of your recent searches? This can\'t be undone.'**
  String get clearRecentSearchesMessage;

  /// Search empty-results state title.
  ///
  /// In en, this message translates to:
  /// **'No movies found'**
  String get noResultsFound;

  /// Search empty-results state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Try a different title, actor, or genre.'**
  String get noResultsSubtitle;

  /// Search idle-state title, shown before typing anything.
  ///
  /// In en, this message translates to:
  /// **'Search for your favorite movies'**
  String get startSearching;

  /// Search idle-state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Find titles, browse cast, and discover something new.'**
  String get startSearchingSubtitle;

  /// Browse screen app bar title.
  ///
  /// In en, this message translates to:
  /// **'Browse Category'**
  String get browseCategory;

  /// Browse empty-state title.
  ///
  /// In en, this message translates to:
  /// **'No categories available'**
  String get noCategoriesAvailable;

  /// Browse empty-state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Check back later for genres to browse.'**
  String get checkBackLaterGenres;

  /// Genre movie grid empty-state title.
  ///
  /// In en, this message translates to:
  /// **'No movies yet'**
  String get noMoviesInGenre;

  /// Genre movie grid empty-state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Nothing in this genre right now — check back soon.'**
  String get checkBackSoonGenre;

  /// Watchlist screen app bar title, with the saved count appended once non-zero.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{My Watchlist} other{My Watchlist ({count})}}'**
  String watchlistTitleWithCount(int count);

  /// Watchlist empty-state title.
  ///
  /// In en, this message translates to:
  /// **'Your watchlist is empty'**
  String get watchlistEmptyTitle;

  /// Watchlist empty-state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Movies you save will show up here so you never lose track of them.'**
  String get watchlistEmptySubtitle;

  /// Snackbar after swiping a movie off the Watchlist screen.
  ///
  /// In en, this message translates to:
  /// **'Removed \"{title}\"'**
  String removedFromWatchlistSnack(String title);

  /// Favorites screen app bar title, with the saved count appended once non-zero.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{Favorites} other{Favorites ({count})}}'**
  String favoritesTitleWithCount(int count);

  /// Favorites empty-state title.
  ///
  /// In en, this message translates to:
  /// **'No favorites yet'**
  String get favoritesEmptyTitle;

  /// Favorites empty-state subtitle.
  ///
  /// In en, this message translates to:
  /// **'Movies you mark as a favorite from Movie Details will show up here.'**
  String get favoritesEmptySubtitle;

  /// Snackbar after swiping a movie off the Favorites screen.
  ///
  /// In en, this message translates to:
  /// **'Removed \"{title}\" from favorites'**
  String removedFromFavoritesSnack(String title);

  /// Snackbar action to restore a just-removed saved movie.
  ///
  /// In en, this message translates to:
  /// **'UNDO'**
  String get undo;

  /// Generic retry button label used on every error state.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Generic inline error message.
  ///
  /// In en, this message translates to:
  /// **'We hit a snag loading this content. Please try again.'**
  String get genericErrorSubtitle;

  /// Error message shown specifically for a NetworkFailure.
  ///
  /// In en, this message translates to:
  /// **'Please check your connection and try again.'**
  String get noInternetSubtitle;

  /// Profile screen app bar title.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profileTitle;

  /// Profile screen heading.
  ///
  /// In en, this message translates to:
  /// **'Your Library'**
  String get yourLibrary;

  /// Profile screen subheading.
  ///
  /// In en, this message translates to:
  /// **'Everything you\'ve saved, in one place'**
  String get everythingSaved;

  /// Profile screen stat card label.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favoritesLabel;

  /// Profile screen stat card label.
  ///
  /// In en, this message translates to:
  /// **'Watchlist'**
  String get watchlistLabel;

  /// Profile screen list tile title, links to Settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsLabel;

  /// Profile screen Settings list tile subtitle.
  ///
  /// In en, this message translates to:
  /// **'Theme, language, and about'**
  String get settingsSubtitle;

  /// Settings screen app bar title.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// Settings section label.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// Settings section label.
  ///
  /// In en, this message translates to:
  /// **'Preferences'**
  String get preferences;

  /// Settings list tile title, and the language picker sheet's heading.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get languageLabel;

  /// Settings section label.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get aboutSection;

  /// Settings list tile title, opens the About dialog.
  ///
  /// In en, this message translates to:
  /// **'About This App'**
  String get aboutThisApp;

  /// App version display.
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String versionLabel(String version);

  /// About dialog title.
  ///
  /// In en, this message translates to:
  /// **'About {appName}'**
  String aboutAppTitle(String appName);

  /// About dialog body copy.
  ///
  /// In en, this message translates to:
  /// **'A premium movie discovery app — browse trending, popular, and top-rated titles, search, and keep track of what you want to watch.'**
  String get aboutDescription;

  /// Required TMDB attribution line, shown in the About dialog.
  ///
  /// In en, this message translates to:
  /// **'This product uses the TMDB API but is not endorsed or certified by TMDB.'**
  String get tmdbAttribution;

  /// About dialog link button.
  ///
  /// In en, this message translates to:
  /// **'Visit TMDB'**
  String get visitTmdb;

  /// Generic dialog dismiss button.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// Shown next to a not-yet-available language in the picker.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get comingSoon;

  /// Theme mode selector segment.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeLight;

  /// Theme mode selector segment.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeDark;

  /// Theme mode selector segment (follows system setting).
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get themeAuto;

  /// Default Cancel button on the shared confirm dialog.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Generic confirmation button label.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// Swipe-to-remove background label on Watchlist/Favorites rows.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get removeLabel;

  /// Share-sheet text when a trailer is available.
  ///
  /// In en, this message translates to:
  /// **'{title} — check out the trailer: {trailerUrl}'**
  String shareWithTrailer(String title, String trailerUrl);

  /// Share-sheet text when no trailer is available.
  ///
  /// In en, this message translates to:
  /// **'Check out \"{title}\" on Movies!'**
  String shareGeneric(String title);

  /// Settings list tile (notificationsLabel).
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notificationsLabel;

  /// Settings list tile (notificationsSubtitle).
  ///
  /// In en, this message translates to:
  /// **'Manage what you get notified about'**
  String get notificationsSubtitle;

  /// Settings list tile (helpCenterLabel).
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get helpCenterLabel;

  /// Settings list tile (helpCenterSubtitle).
  ///
  /// In en, this message translates to:
  /// **'FAQs, contact us, and more'**
  String get helpCenterSubtitle;

  /// Settings list tile (systemDefault).
  ///
  /// In en, this message translates to:
  /// **'System default'**
  String get systemDefault;

  /// Tooltip for the back button.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// Tooltip for the clear search button.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// Title of the edit profile screen.
  ///
  /// In en, this message translates to:
  /// **'Edit Information'**
  String get editInformation;

  /// Generic save button label.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Label for the name input field.
  ///
  /// In en, this message translates to:
  /// **'Display Name'**
  String get displayName;

  /// Label for the photo URL input field.
  ///
  /// In en, this message translates to:
  /// **'Photo URL'**
  String get photoUrl;

  /// Hint text for the photo URL input field.
  ///
  /// In en, this message translates to:
  /// **'https://example.com/avatar.jpg'**
  String get photoUrlHint;

  /// Hint text for the name input field.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get enterName;

  /// Snackbar message after a successful profile update.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profileUpdated;

  /// Auth screen string: signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// Auth screen string: signUp.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signUp;

  /// Auth screen string: welcomeBack.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back'**
  String get welcomeBack;

  /// Auth screen string: signInSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to sync your watchlist and favorites across devices.'**
  String get signInSubtitle;

  /// Auth screen string: createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// Auth screen string: signUpSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign up to save your watchlist and favorites to your account.'**
  String get signUpSubtitle;

  /// Auth screen string: emailLabel.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get emailLabel;

  /// Auth screen string: passwordLabel.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get passwordLabel;

  /// Auth screen string: confirmPasswordLabel.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPasswordLabel;

  /// Auth screen string: nameLabel.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get nameLabel;

  /// Auth screen string: forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get forgotPassword;

  /// Auth screen string: noAccountYet.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account? '**
  String get noAccountYet;

  /// Auth screen string: alreadyHaveAccount.
  ///
  /// In en, this message translates to:
  /// **'Already have an account? '**
  String get alreadyHaveAccount;

  /// Auth screen string: continueAsGuest.
  ///
  /// In en, this message translates to:
  /// **'Continue as Guest'**
  String get continueAsGuest;

  /// Auth screen string: authErrorFieldRequired.
  ///
  /// In en, this message translates to:
  /// **'This field is required.'**
  String get authErrorFieldRequired;

  /// Auth screen string: authErrorInvalidEmail.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid email address.'**
  String get authErrorInvalidEmail;

  /// Auth screen string: authErrorUserDisabled.
  ///
  /// In en, this message translates to:
  /// **'This account has been disabled.'**
  String get authErrorUserDisabled;

  /// Auth screen string: authErrorUserNotFound.
  ///
  /// In en, this message translates to:
  /// **'No account found with that email.'**
  String get authErrorUserNotFound;

  /// Auth screen string: authErrorWrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Incorrect email or password.'**
  String get authErrorWrongPassword;

  /// Auth screen string: authErrorEmailInUse.
  ///
  /// In en, this message translates to:
  /// **'An account already exists with that email.'**
  String get authErrorEmailInUse;

  /// Auth screen string: authErrorWeakPassword.
  ///
  /// In en, this message translates to:
  /// **'That password is too weak.'**
  String get authErrorWeakPassword;

  /// Auth screen string: authErrorWeakPasswordHint.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least {minLength} characters.'**
  String authErrorWeakPasswordHint(int minLength);

  /// Auth screen string: authErrorTooManyRequests.
  ///
  /// In en, this message translates to:
  /// **'Too many attempts. Please wait a moment and try again.'**
  String get authErrorTooManyRequests;

  /// Auth screen string: authErrorNotConfigured.
  ///
  /// In en, this message translates to:
  /// **'Sign-in isn\'t set up for this app yet.'**
  String get authErrorNotConfigured;

  /// Auth screen string: authErrorRequiresRecentLogin.
  ///
  /// In en, this message translates to:
  /// **'Please sign in again to continue.'**
  String get authErrorRequiresRecentLogin;

  /// Auth screen string: authErrorPasswordMismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords don\'t match.'**
  String get authErrorPasswordMismatch;

  /// Auth screen string: authEnterEmailFirst.
  ///
  /// In en, this message translates to:
  /// **'Enter your email above first.'**
  String get authEnterEmailFirst;

  /// Auth screen string: authResetEmailSent.
  ///
  /// In en, this message translates to:
  /// **'Password reset email sent to {email}.'**
  String authResetEmailSent(String email);

  /// Profile screen auth string: authSyncBannerTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to sync'**
  String get authSyncBannerTitle;

  /// Profile screen auth string: authSyncBannerSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Save your watchlist and favorites to your account and access them on any device.'**
  String get authSyncBannerSubtitle;

  /// Profile screen auth string: signOut.
  ///
  /// In en, this message translates to:
  /// **'Sign Out'**
  String get signOut;

  /// Profile screen auth string: signOutConfirmTitle.
  ///
  /// In en, this message translates to:
  /// **'Sign Out?'**
  String get signOutConfirmTitle;

  /// Profile screen auth string: signOutConfirmMessage.
  ///
  /// In en, this message translates to:
  /// **'You can sign back in anytime. Your watchlist and favorites stay saved to your account.'**
  String get signOutConfirmMessage;

  /// Profile screen auth string: signedOutSnack.
  ///
  /// In en, this message translates to:
  /// **'Signed out'**
  String get signedOutSnack;

  /// Profile screen auth string: guestBadge.
  ///
  /// In en, this message translates to:
  /// **'Guest'**
  String get guestBadge;

  /// Watchlist/Favorites sync-status string: syncedToAccount.
  ///
  /// In en, this message translates to:
  /// **'Synced to your account'**
  String get syncedToAccount;

  /// Watchlist/Favorites sync-status string: localOnlyBanner.
  ///
  /// In en, this message translates to:
  /// **'Saved on this device only — sign in to sync across devices'**
  String get localOnlyBanner;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'de',
        'en',
        'es',
        'fr',
        'hi',
        'it',
        'ko',
        'nl',
        'pt',
        'ru',
        'tr',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'it':
      return AppLocalizationsIt();
    case 'ko':
      return AppLocalizationsKo();
    case 'nl':
      return AppLocalizationsNl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'tr':
      return AppLocalizationsTr();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
