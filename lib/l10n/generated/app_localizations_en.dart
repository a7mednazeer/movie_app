// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTagline => 'YOUR WORLD OF CINEMA';

  @override
  String get navHome => 'Home';

  @override
  String get navSearch => 'Search';

  @override
  String get navBrowse => 'Browse';

  @override
  String get navWatchlist => 'Watchlist';

  @override
  String get navProfile => 'Profile';

  @override
  String get sectionTrending => 'Trending Now';

  @override
  String get sectionPopular => 'Popular Movies';

  @override
  String get sectionTopRated => 'Top Rated';

  @override
  String get sectionUpcoming => 'Upcoming';

  @override
  String get sectionRecommended => 'Recommended For You';

  @override
  String get sectionCategories => 'Categories';

  @override
  String get seeAll => 'See All';

  @override
  String get moreLikeThis => 'More Like This';

  @override
  String get cast => 'Cast';

  @override
  String get reviews => 'Reviews';

  @override
  String get noReviewsYet =>
      'No reviews yet — be the first to share your thoughts.';

  @override
  String get overview => 'Overview';

  @override
  String get watchTrailer => 'Watch Trailer';

  @override
  String get noTrailerAvailable => 'No trailer available for this title yet.';

  @override
  String get trailerOpenFailed => 'Couldn\'t open the trailer.';

  @override
  String get addToWatchlist => 'Watchlist';

  @override
  String get removedFromWatchlist => 'Removed from watchlist';

  @override
  String get addedToWatchlist => 'Added to watchlist';

  @override
  String get share => 'Share';

  @override
  String get readMore => 'Read more';

  @override
  String get readLess => 'Read less';

  @override
  String get searchHint => 'Search movies, actors, genres…';

  @override
  String get recentSearches => 'Recent Searches';

  @override
  String get trendingSearches => 'Trending Searches';

  @override
  String get clearAll => 'Clear All';

  @override
  String get clearRecentSearchesMessage =>
      'Remove all of your recent searches? This can\'t be undone.';

  @override
  String get noResultsFound => 'No movies found';

  @override
  String get noResultsSubtitle => 'Try a different title, actor, or genre.';

  @override
  String get startSearching => 'Search for your favorite movies';

  @override
  String get startSearchingSubtitle =>
      'Find titles, browse cast, and discover something new.';

  @override
  String get browseCategory => 'Browse Category';

  @override
  String get noCategoriesAvailable => 'No categories available';

  @override
  String get checkBackLaterGenres => 'Check back later for genres to browse.';

  @override
  String get noMoviesInGenre => 'No movies yet';

  @override
  String get checkBackSoonGenre =>
      'Nothing in this genre right now — check back soon.';

  @override
  String watchlistTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'My Watchlist ($count)',
      zero: 'My Watchlist',
    );
    return '$_temp0';
  }

  @override
  String get watchlistEmptyTitle => 'Your watchlist is empty';

  @override
  String get watchlistEmptySubtitle =>
      'Movies you save will show up here so you never lose track of them.';

  @override
  String removedFromWatchlistSnack(String title) {
    return 'Removed \"$title\"';
  }

  @override
  String favoritesTitleWithCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Favorites ($count)',
      zero: 'Favorites',
    );
    return '$_temp0';
  }

  @override
  String get favoritesEmptyTitle => 'No favorites yet';

  @override
  String get favoritesEmptySubtitle =>
      'Movies you mark as a favorite from Movie Details will show up here.';

  @override
  String removedFromFavoritesSnack(String title) {
    return 'Removed \"$title\" from favorites';
  }

  @override
  String get undo => 'UNDO';

  @override
  String get retry => 'Retry';

  @override
  String get genericErrorSubtitle =>
      'We hit a snag loading this content. Please try again.';

  @override
  String get noInternetSubtitle =>
      'Please check your connection and try again.';

  @override
  String get profileTitle => 'Profile';

  @override
  String get yourLibrary => 'Your Library';

  @override
  String get everythingSaved => 'Everything you\'ve saved, in one place';

  @override
  String get favoritesLabel => 'Favorites';

  @override
  String get watchlistLabel => 'Watchlist';

  @override
  String get settingsLabel => 'Settings';

  @override
  String get settingsSubtitle => 'Theme, language, and about';

  @override
  String get settingsTitle => 'Settings';

  @override
  String get appearance => 'Appearance';

  @override
  String get preferences => 'Preferences';

  @override
  String get languageLabel => 'Language';

  @override
  String get aboutSection => 'About';

  @override
  String get aboutThisApp => 'About This App';

  @override
  String versionLabel(String version) {
    return 'Version $version';
  }

  @override
  String aboutAppTitle(String appName) {
    return 'About $appName';
  }

  @override
  String get aboutDescription =>
      'A premium movie discovery app — browse trending, popular, and top-rated titles, search, and keep track of what you want to watch.';

  @override
  String get tmdbAttribution =>
      'This product uses the TMDB API but is not endorsed or certified by TMDB.';

  @override
  String get visitTmdb => 'Visit TMDB';

  @override
  String get close => 'Close';

  @override
  String get comingSoon => 'Coming soon';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get themeAuto => 'Auto';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get removeLabel => 'Remove';

  @override
  String shareWithTrailer(String title, String trailerUrl) {
    return '$title — check out the trailer: $trailerUrl';
  }

  @override
  String shareGeneric(String title) {
    return 'Check out \"$title\" on Movies!';
  }

  @override
  String get notificationsLabel => 'Notifications';

  @override
  String get notificationsSubtitle => 'Manage what you get notified about';

  @override
  String get helpCenterLabel => 'Help Center';

  @override
  String get helpCenterSubtitle => 'FAQs, contact us, and more';

  @override
  String get systemDefault => 'System default';

  @override
  String get back => 'Back';

  @override
  String get clear => 'Clear';

  @override
  String get editInformation => 'Edit Information';

  @override
  String get save => 'Save';

  @override
  String get displayName => 'Display Name';

  @override
  String get photoUrl => 'Photo URL';

  @override
  String get enterName => 'Enter your name';

  @override
  String get profileUpdated => 'Profile updated successfully';

  @override
  String get signIn => 'Sign In';

  @override
  String get signUp => 'Sign Up';

  @override
  String get welcomeBack => 'Welcome Back';

  @override
  String get signInSubtitle =>
      'Sign in to sync your watchlist and favorites across devices.';

  @override
  String get createAccount => 'Create Account';

  @override
  String get signUpSubtitle =>
      'Sign up to save your watchlist and favorites to your account.';

  @override
  String get emailLabel => 'Email';

  @override
  String get passwordLabel => 'Password';

  @override
  String get confirmPasswordLabel => 'Confirm Password';

  @override
  String get nameLabel => 'Name';

  @override
  String get forgotPassword => 'Forgot password?';

  @override
  String get noAccountYet => 'Don\'t have an account? ';

  @override
  String get alreadyHaveAccount => 'Already have an account? ';

  @override
  String get continueAsGuest => 'Continue as Guest';

  @override
  String get authErrorFieldRequired => 'This field is required.';

  @override
  String get authErrorInvalidEmail => 'Enter a valid email address.';

  @override
  String get authErrorUserDisabled => 'This account has been disabled.';

  @override
  String get authErrorUserNotFound => 'No account found with that email.';

  @override
  String get authErrorWrongPassword => 'Incorrect email or password.';

  @override
  String get authErrorEmailInUse =>
      'An account already exists with that email.';

  @override
  String get authErrorWeakPassword => 'That password is too weak.';

  @override
  String authErrorWeakPasswordHint(int minLength) {
    return 'Password must be at least $minLength characters.';
  }

  @override
  String get authErrorTooManyRequests =>
      'Too many attempts. Please wait a moment and try again.';

  @override
  String get authErrorNotConfigured =>
      'Sign-in isn\'t set up for this app yet.';

  @override
  String get authErrorRequiresRecentLogin =>
      'Please sign in again to continue.';

  @override
  String get authErrorPasswordMismatch => 'Passwords don\'t match.';

  @override
  String get authEnterEmailFirst => 'Enter your email above first.';

  @override
  String authResetEmailSent(String email) {
    return 'Password reset email sent to $email.';
  }

  @override
  String get authSyncBannerTitle => 'Sign in to sync';

  @override
  String get authSyncBannerSubtitle =>
      'Save your watchlist and favorites to your account and access them on any device.';

  @override
  String get signOut => 'Sign Out';

  @override
  String get signOutConfirmTitle => 'Sign Out?';

  @override
  String get signOutConfirmMessage =>
      'You can sign back in anytime. Your watchlist and favorites stay saved to your account.';

  @override
  String get signedOutSnack => 'Signed out';

  @override
  String get guestBadge => 'Guest';

  @override
  String get syncedToAccount => 'Synced to your account';

  @override
  String get localOnlyBanner =>
      'Saved on this device only — sign in to sync across devices';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get photoUrlLabel => 'Photo URL';

  @override
  String get photoUrlFieldHint => 'https://example.com/photo.jpg';

  @override
  String get photoUrlHint =>
      'Paste a link to an image. Leave blank to remove your photo.';

  @override
  String get invalidUrlError =>
      'Enter a valid image URL starting with http:// or https://.';

  @override
  String get saveChanges => 'Save Changes';

  @override
  String get profileUpdatedSnack => 'Profile updated';

  @override
  String get deleteAccountAction => 'Delete Account';

  @override
  String get deleteAccountConfirmTitle => 'Delete your account?';

  @override
  String get deleteAccountConfirmMessage =>
      'This permanently deletes your account and sign-in. Your watchlist and favorites stay on this device but will no longer sync anywhere. This can\'t be undone.';

  @override
  String get accountDeletedSnack => 'Account deleted';

  @override
  String get chatbotEntrySubtitle => 'Get quick answers from our FAQ assistant';

  @override
  String get faqEntrySubtitle => 'Browse common questions and answers';

  @override
  String get contactUsEntrySubtitle => 'Send us a message';

  @override
  String get feedbackEntrySubtitle => 'Rate the app and tell us what you think';

  @override
  String get aboutEntrySubtitle => 'Version, credits, and legal';

  @override
  String get chatbotTitle => 'Help Assistant';

  @override
  String get chatbotGreeting =>
      'Hi! Ask me anything about using the app — I\'ll do my best to help.';

  @override
  String get chatbotInputHint => 'Type your question…';

  @override
  String get chatbotNoMatch =>
      'I\'m not sure about that one. Try rephrasing, browse the FAQ, or contact us and a real person will help.';

  @override
  String get chatbotContactHumanPrompt => 'Need a real person? Contact us';

  @override
  String get faqTitle => 'Frequently Asked Questions';

  @override
  String get faqSearchHint => 'Search the FAQ…';

  @override
  String get faqNoResultsSubtitle =>
      'Try a different search term, or ask our chat assistant.';

  @override
  String get faqQAboutApp => 'What is this app?';

  @override
  String get faqAAboutApp =>
      'MOVIES is a movie discovery app — browse trending, popular, and top-rated titles, search for anything, and keep track of what you want to watch.';

  @override
  String get faqQSearch => 'How do I search for a movie?';

  @override
  String get faqASearch =>
      'Tap Search in the bottom navigation, then type a title, actor, or genre. Results update as you type.';

  @override
  String get faqQWatchlistVsFavorites =>
      'What\'s the difference between Watchlist and Favorites?';

  @override
  String get faqAWatchlistVsFavorites =>
      'Watchlist is for movies you plan to watch. Favorites is for movies you already love. They\'re tracked separately, and a movie can be in both.';

  @override
  String get faqQSaveMovie => 'How do I save a movie?';

  @override
  String get faqASaveMovie =>
      'Tap the bookmark icon on any movie card, or use the Watchlist/Favorite buttons on a movie\'s details page.';

  @override
  String get faqQNeedAccount => 'Do I need an account to use the app?';

  @override
  String get faqANeedAccount =>
      'No — everything works as a guest, saved locally on your device. Signing in adds cross-device sync, so your watchlist and favorites follow you to any device you sign into.';

  @override
  String get faqQSignIn => 'How do I sign in or create an account?';

  @override
  String get faqASignIn =>
      'Go to Profile and tap the sign-in banner, or Profile → your account area if you\'re already set up. Sign-up just needs a name, email, and password.';

  @override
  String get faqQSyncDevices => 'How does syncing across devices work?';

  @override
  String get faqASyncDevices =>
      'Once you\'re signed in, your watchlist and favorites automatically sync to your account and update in real time on any other device signed into the same account.';

  @override
  String get faqQOffline => 'Does the app work offline?';

  @override
  String get faqAOffline =>
      'Your watchlist and favorites are always available offline since they\'re stored on your device. Browsing new movies needs an internet connection.';

  @override
  String get faqQChangeLanguage => 'How do I change the app\'s language?';

  @override
  String get faqAChangeLanguage =>
      'Go to Settings → Language and pick from 12 supported languages, or choose System Default to follow your device\'s language.';

  @override
  String get faqQChangeTheme => 'How do I switch between light and dark mode?';

  @override
  String get faqAChangeTheme =>
      'Go to Settings → Appearance and choose Light, Dark, or Auto to follow your device\'s setting.';

  @override
  String get faqQWatchTrailer => 'How do I watch a trailer?';

  @override
  String get faqAWatchTrailer =>
      'Open a movie\'s details page and tap Watch Trailer. It opens in YouTube if a trailer is available for that title.';

  @override
  String get faqQDeleteAccount => 'How do I delete my account?';

  @override
  String get faqADeleteAccount =>
      'Go to Profile → Edit Profile and scroll to Delete Account. This permanently removes your account; your watchlist and favorites stay on your device but stop syncing.';

  @override
  String get faqQContactSupport => 'How do I contact support?';

  @override
  String get faqAContactSupport =>
      'Go to Help Center → Contact Us and send us a message — it opens your email app with everything pre-filled.';

  @override
  String get contactUsTitle => 'Contact Us';

  @override
  String get contactUsSubtitle =>
      'Have a question or ran into a problem? Send us a message and we\'ll get back to you.';

  @override
  String get contactSubjectLabel => 'Subject';

  @override
  String get contactMessageLabel => 'Message';

  @override
  String get contactSendAction => 'Send Message';

  @override
  String get contactMailAppUnavailable => 'No email app found on this device.';

  @override
  String contactEmailBodyTemplate(String name, String email, String message) {
    return 'Name: $name\nEmail: $email\n\n$message';
  }

  @override
  String get feedbackTitle => 'Feedback';

  @override
  String get feedbackSubtitle => 'How\'s your experience with the app so far?';

  @override
  String get feedbackCommentHint => 'Tell us more (optional)…';

  @override
  String get feedbackSendAction => 'Send Feedback';

  @override
  String get feedbackRatingRequired => 'Please select a star rating first.';

  @override
  String get feedbackThanks => 'Thanks for your feedback!';

  @override
  String get feedbackNoComment => '(No comment provided)';

  @override
  String get feedbackEmailSubject => 'App Feedback';

  @override
  String feedbackEmailBodyTemplate(int rating, String comment) {
    return 'Rating: $rating/5\n\n$comment';
  }

  @override
  String get termsTitle => 'Terms of Service';

  @override
  String get privacyTitle => 'Privacy Policy';

  @override
  String get legalLastUpdated => 'Last updated: January 2026';

  @override
  String get termsSection1Title => '1. Acceptance of Terms';

  @override
  String get termsSection1Body =>
      'By using this app, you agree to these Terms of Service. If you don\'t agree, please don\'t use the app.';

  @override
  String get termsSection2Title => '2. The Service';

  @override
  String get termsSection2Body =>
      'This app lets you browse, search, and save movie information sourced from The Movie Database (TMDB). We don\'t host, stream, or distribute any video content ourselves.';

  @override
  String get termsSection3Title => '3. Accounts';

  @override
  String get termsSection3Body =>
      'You can use most features as a guest without an account. Creating an account (email and password, via Firebase Authentication) enables syncing your watchlist and favorites across your devices. You\'re responsible for keeping your password secure.';

  @override
  String get termsSection4Title => '4. Your Content';

  @override
  String get termsSection4Body =>
      'Your watchlist, favorites, profile name, and photo URL are yours. We store them to provide the service and don\'t sell them or use them for advertising.';

  @override
  String get termsSection5Title => '5. Third-Party Data';

  @override
  String get termsSection5Body =>
      'Movie titles, posters, ratings, cast, and reviews are provided by TMDB and may be inaccurate or change without notice. This product uses the TMDB API but is not endorsed or certified by TMDB.';

  @override
  String get termsSection6Title => '6. Termination';

  @override
  String get termsSection6Body =>
      'You can delete your account at any time from Profile → Edit Profile. We may suspend access for behavior that violates these terms or misuses the service.';

  @override
  String get termsSection7Title => '7. Changes to These Terms';

  @override
  String get termsSection7Body =>
      'We may update these terms from time to time. Continuing to use the app after changes means you accept the updated terms.';

  @override
  String get privacySection1Title => '1. What We Collect';

  @override
  String get privacySection1Body =>
      'If you use the app as a guest, we don\'t collect any personal data — your watchlist and favorites are stored only on your device. If you create an account, we collect your name, email address, and (optionally) a profile photo URL via Firebase Authentication.';

  @override
  String get privacySection2Title => '2. Watchlist and Favorites Data';

  @override
  String get privacySection2Body =>
      'When signed in, your saved movies are stored in Firestore under your account and synced across your devices. Each account\'s data is only accessible to that account — enforced by Firestore security rules.';

  @override
  String get privacySection3Title => '3. Third-Party Services';

  @override
  String get privacySection3Body =>
      'We use The Movie Database (TMDB) to fetch movie information, and Firebase (Google) for authentication and data storage. These services have their own privacy policies governing how they handle data on their end.';

  @override
  String get privacySection4Title => '4. Local Storage';

  @override
  String get privacySection4Body =>
      'Your watchlist, favorites, theme, and language preferences are stored locally on your device (via Hive) so the app works offline and instantly, whether or not you\'re signed in.';

  @override
  String get privacySection5Title => '5. Data Deletion';

  @override
  String get privacySection5Body =>
      'You can delete your account at any time from Profile → Edit Profile, which permanently removes your account and stops any further syncing. Data already stored locally on your device remains until you clear the app\'s storage.';

  @override
  String get privacySection6Title => '6. Contact';

  @override
  String get privacySection6Body =>
      'Questions about this policy? Reach us through Help Center → Contact Us.';
}
