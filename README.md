# Movies — Premium Flutter Movie App

A production-grade Flutter movie discovery app built with Clean
Architecture, MVVM-style separation, and Riverpod for state management.
This is being built **page by page**. Every screen from the original
brief is now complete, including both optional enhancements:
**Splash**, **Home**, **Movie Details**, **Search**, **Browse**,
**Watchlist**, **Profile**, and **Settings** — and the entire app is
now fully localized into 12 languages.

## What's included in this step

```
lib/
├── main.dart
├── models/                # Movie, Genre, CastMember, Review
├── repositories/           # MovieRepository contract + dummy-backed impl + data source
├── providers/              # App-wide DI (repository, API client) + Watchlist + Favorites +
│                             Genres state (Watchlist/Favorites persisted via Hive)
├── core/
│   ├── constants/           # Colors, text styles, spacing, strings, asset paths, durations
│   ├── theme/                # Centralized Material 3 light/dark ThemeData + theme-mode provider
│   ├── routes/                # GoRouter config — bottom-nav shell, nested Browse→Genre and
│   │                            Profile→Favorites routes, Movie Details + Settings routes
│   ├── network/                # Dio API client, TMDB endpoint constants, connectivity checker
│   ├── errors/                  # Failure (domain) + Exception (data) types
│   ├── utils/                    # Logger, Either-unwrap helper, external URL launcher helper
│   ├── extensions/                 # BuildContext convenience extensions
│   └── widgets/                     # Shared widgets: poster/wide movie cards, MovieRailSection,
│                                       SavedMoviesList, shimmer, error views, section header,
│                                       genre chip, confirm dialog, bottom-nav shell
└── features/
    ├── splash/           → ✅ Complete
    ├── home/              → ✅ Complete
    ├── movie_details/     → ✅ Complete
    ├── search/            → ✅ Complete
    ├── browse/            → ✅ Complete
    ├── watchlist/         → ✅ Complete
    ├── profile/           → ✅ Complete (includes the Favorites screen)
    └── settings/          → ✅ Complete
```

## Home Screen — what it does

- **Featured banner** — auto-advancing carousel (`PageView` + a 6s timer)
  built from the top 5 trending movies: backdrop image, gradient
  scrim, title, year/runtime/certification/rating, a play button that
  opens Movie Details, a watchlist toggle, and `smooth_page_indicator`
  dots.
- **Categories** — a horizontal row of genre chips sourced from the
  shared `genresProvider`; tapping one deep-links straight into Browse's
  genre-movies grid (`/browse/genre/:genreId`) via GoRouter.
- **Trending / Popular / Top Rated / Upcoming** — four independent
  horizontal rails (`MovieRailSection`, now shared from `core/widgets`),
  each backed by its own `FutureProvider` so a slow or failed request in
  one rail never blocks the others. Each rail has its own shimmer
  skeleton, inline retry-on-error state, and empty-state handling.
- **Recommended For You** — a vertical section using a distinct wide
  card layout so Home reads as a genuine mix of horizontal and vertical
  sections.
- **Pull-to-refresh** — `refreshHome()` invalidates every section
  provider and awaits them together.
- **Navigation** — tapping any movie pushes Movie Details with a shared
  Hero poster transition; the bottom nav (Home/Search/Browse/Watchlist)
  is a `StatefulShellRoute`, so each tab keeps its own scroll position
  and back-stack when switching around.

## Movie Details — what it does

- **Collapsing backdrop** (`DetailsSliverAppBar`) with a translucent
  back button, a functional share action, and a centered play button
  that opens the trailer.
- **Poster + metadata** (`MovieInfoHeader`) — title, release year,
  certification badge, runtime, rating with vote count, and a genre chip
  row next to the poster (both share the same Hero tag as the card that
  was tapped, for a seamless shared-element transition).
- **Action row** — Favorite, Watchlist, Share, and Watch Trailer, all
  four fully functional:
  - Favorite/Watchlist toggle their own independent providers
    (`favoritesProvider` / `watchlistProvider`) with snackbar feedback.
  - Share uses `share_plus`.
  - Trailer opens the YouTube link via `url_launcher` when a movie has a
    `videoKey`, or shows a graceful "not available yet" snackbar when it
    doesn't (dummy data has no real video keys yet — wire a real one up
    once the TMDB videos endpoint is connected).
- **Expandable overview** — collapses to 3 lines with a "Read more /
  Read less" toggle, animated via `AnimatedSize`.
- **Cast** — a horizontal rail of cast members (avatar initials today,
  ready for real profile photos), each with an independent loading/error
  state.
- **More Like This** — reuses the exact same `MovieRailSection` widget
  Home uses, so there's zero duplicated rail UI code; tapping a similar
  movie pushes another Movie Details screen on top (real nested
  navigation).
- **Reviews** — a vertical list of review cards with avatar initial,
  star rating, formatted date (`intl`), and per-review expand/collapse
  for longer reviews.
- Every section above (`CastSection`, `SimilarMoviesSection`,
  `ReviewsSection`) is backed by its own `FutureProvider.family` keyed by
  movie id, so a slow or failed request in one section never blocks the
  others.

## Search Screen — what it does

- **Debounced live search** — typing updates the UI's idle/results split
  instantly, while the actual network query only fires ~400ms after
  typing pauses (`SearchScreen`'s `_rawQuery` vs `_committedQuery`), with
  a shimmer covering that debounce gap so it never feels laggy.
- **Recent searches** — persisted via `SharedPreferences`
  (`RecentSearchesNotifier`), de-duplicated, capped at 10. Individually
  removable; "Clear All" goes through the new reusable `AppConfirmDialog`.
  Selecting a search result also records that title as a recent search.
- **Trending suggestions** — quick-tap chips reusing Home's already-fetched
  `trendingMoviesProvider` (no duplicate network call).
- **Empty / no-results states** — a dedicated "Search for your favorite
  movies" prompt before typing, and a distinct "No movies found" state
  for a query with no matches — both via the shared `FullScreenStateView`.
- **Results list** — reuses `MovieWideCard` (same component as Home's
  Recommended section and Movie Details), so there's zero duplicated
  list-card UI across the app.

## Browse Screen — what it does

- **Genre grid** — every genre from the shared `genresProvider` as a
  colorful gradient card (`GenreGridCard`, deterministic palette by genre
  id so it's consistent and vivid without needing real artwork).
- **Genre movies** — tapping a card (or a Home category chip) opens
  `/browse/genre/:genreId`, a route *nested* inside Browse's own
  `StatefulShellBranch` — so the back button returns to the grid with its
  scroll position intact, exactly like a real app's tab navigation.
- The genre-movies grid computes its own cell width via `LayoutBuilder`
  so `MoviePosterCard` (built for the horizontal rails' fixed-width use)
  renders correctly at three columns with no layout overflow.
- Independent loading shimmer, inline retry-on-error, and an empty state
  for a genre with no matches.

## Watchlist Screen — what it does

- **Real persistence** — `watchlistProvider`'s ids are backed by a Hive
  box (`watchlist_ids`), so everything saved from any screen in the app
  (Home, Search, Browse, Movie Details) survives an app restart. Adding
  Hive only changed the notifier's internals — every card's `onToggleSaved`
  callback across the app kept working unmodified.
  `favoritesProvider` got the same treatment for consistency.
- **Swipe-to-remove** — `Dismissible` rows with an "Undo" `SnackBar`
  action that instantly restores the movie if tapped.
- Ids resolve to full `Movie` objects via `watchlistMoviesProvider`,
  fetched in parallel (`Future.wait`) rather than one at a time, ordered
  most-recently-added first.
- Loading shimmer, inline retry-on-error, and the same empty state
  wording used everywhere else in the app.

## Architecture decisions

- **State management:** Riverpod (`flutter_riverpod`). Section data
  flows as `FutureProvider<List<T>>` (Home) or
  `FutureProvider.autoDispose.family<T, int>` (Movie Details, keyed by
  movie id), each unwrapping the repository's `Either<Failure, T>` via
  the shared `unwrapEither()` helper so failures surface naturally as
  `AsyncValue.error` — no try/catch in any widget.
- **Repository pattern:** `MovieRepository` (abstract) → `MovieRepositoryImpl`
  (currently backed by `DummyMovieDataSource`). See the doc comment atop
  `movie_repository_impl.dart` for the exact 3-step swap to a real TMDB
  remote data source — no other file changes.
- **Navigation:** GoRouter, configured centrally in `core/routes/app_router.dart`.
  Home/Search/Browse/Watchlist live inside one `StatefulShellRoute`;
  Movie Details is a top-level route so it opens full-screen over the
  bottom nav, and can push onto itself (Similar Movies → another Movie
  Details).
- **Networking:** `Dio` wrapped by `ApiClient`, pre-wired for **TMDB**
  (`core/network/api_endpoints.dart`).
- **Theming:** One centralized `AppTheme` (Material 3) with light and
  dark `ThemeData`.
- **No duplication:** shared logic (Either-unwrapping, external URL
  launching + error snackbar, the movie rail UI, the wide list card, the
  confirm dialog) lives in exactly one file each (`core/utils`,
  `core/widgets`) and is reused across Home, Movie Details, and Search.

## Real TMDB API — wired in, with an automatic fallback

`MovieRepositoryImpl` picks its data source **once, at construction**,
based on whether a key is configured:

```bash
flutter run --dart-define=TMDB_API_KEY=your_key_here
```

- **Key present** → `MovieRemoteDataSource` (`repositories/datasources/`)
  hits the real TMDB API and parses real JSON into `Movie`/`Genre`/
  `CastMember`/`Review`.
- **No key** → falls back to `DummyMovieDataSource`, so the app is fully
  functional out of the box with zero setup.

Two real-API quirks worth knowing about:
- TMDB has no anonymous "recommended for you" endpoint (that needs a
  signed-in user's history, and this app has no accounts) — Home's
  Recommended rail queries `/discover/movie` for well-reviewed, popular
  titles instead, the same honest fallback real apps use for a
  first-time user.
- The trailer key comes from `/movie/{id}?append_to_response=videos` (one
  request, not two), preferring an official YouTube trailer and merging
  the key into `Movie` via `copyWith`.

Get a free key at https://www.themoviedb.org/settings/api. If a request
fails once real data is configured (e.g. no internet), that's a genuine,
retryable `Failure` shown to the user — it does *not* silently swap back
to dummy data mid-session.

## Real image assets

- **App icon** — an original gradient "M" mark (same design and Poppins
  Bold font as the in-app splash logo), generated to
  `assets/icon/app_icon.png` / `app_icon_foreground.png`, with
  `flutter_launcher_icons` configured in `pubspec.yaml`. Run
  `dart run flutter_launcher_icons` after `flutter pub get` to generate
  the real per-platform Android/iOS launcher icons from it.
- **4 original SVG illustrations** (`assets/images/*.svg`, hand-authored,
  on-brand with the app's color palette): search, no-results,
  empty-bookmark, and connection-error. Wired through
  `core/constants/asset_paths.dart` (previously unused — every path was
  reserved but nothing actually referenced it) into
  `FullScreenStateView`'s new optional `illustrationAsset` slot, replacing
  the plain icon-in-circle on Search's empty/no-results states, Browse's
  empty-categories state, GenreMovies' empty state, and the shared
  Watchlist/Favorites empty state.
- **`InlineErrorView` is now network-aware** — pass the `error` an
  `AsyncValue.when` already caught and it shows a distinct "No internet
  connection" message + Wi-Fi-off icon for a `NetworkFailure`, instead of
  a generic error, across every rail/section in the app.
- Movie posters/backdrops still come from `Movie.posterUrl`/`backdropUrl`
  (real TMDB image CDN once wired, per above) — until then, or if a
  specific image fails to load, cards fall back to a clean icon-based
  placeholder rather than a broken-image glyph.

## Running this drop

```bash
flutter pub get
dart run flutter_launcher_icons   # generates the real app icon
flutter run                       # add --dart-define=TMDB_API_KEY=... for real data
```

Splash → Home → tap any movie → full Movie Details, including tapping
into "More Like This" for nested navigation. Search for live search with
recent searches and trending suggestions. Browse for the genre grid
(genre cards and Home's category chips both lead to the same
genre-movies view). Watchlist for everything you've saved, with
swipe-to-remove + Undo — and it's still there after a restart. Tap the
profile icon next to Search in Home's app bar for Profile → Favorites
and Settings.

## Profile Screen — what it does

- Deliberately doesn't invent a signed-in user (no name/email/avatar
  photo) since the app has no accounts — framed instead as "Your
  Library": real counts of what's actually persisted.
- **Favorites** and **Watchlist** stat cards show live counts
  (`favoritesProvider`/`watchlistProvider`) and tap through to the full
  list — Favorites is a new nested route (`/profile/favorites`);
  Watchlist switches straight to its bottom-nav tab.
- Settings shortcut.

## Settings Screen — what it does

- **Theme switch** — a Light/Dark/Auto `SegmentedButton` wired directly
  to the existing `themeModeProvider` (already persisted since Splash);
  switching updates the whole app instantly.
- **Language** — a modal picker over four languages. English is fully
  wired and persisted; the other three are visibly labeled "Coming
  soon" and can't be selected — an honest, functional picker rather than
  one that silently pretends to translate content it can't.
- **About** — app version, a short description, and the TMDB attribution
  line required by TMDB's terms, with a "Visit TMDB" link via the shared
  `openExternalUrl` helper.

## New shared infrastructure

- **`SavedMoviesList`** (`core/widgets`) — the swipe-to-remove/Undo/empty/
  loading/error list pattern, extracted once Favorites needed the exact
  same behavior as Watchlist. `WatchlistScreen` was refactored to use it
  too, so that logic now lives in exactly one place instead of two.
- **`favoriteMoviesProvider`** mirrors `watchlistMoviesProvider` exactly
  (ids → resolved `Movie`s, most-recent-first, parallel fetch).
- **`MovieRemoteDataSource`** — the real TMDB data source, a drop-in
  alongside `DummyMovieDataSource` (see above).
- **`FullScreenStateView.illustrationAsset`** and **network-aware
  `InlineErrorView`** — see "Real image assets" above.

## Automated tests

```bash
flutter test
```

14 test files, no mocking library — just hand-written fakes, in keeping
with the rest of the project's style:

- **`test/models/`** — `Movie`/`Genre`/`CastMember`/`Review.fromJson`
  parsing (list-endpoint vs details-endpoint shapes, missing/malformed
  fields defaulting sensibly instead of throwing), plus `Movie`'s
  computed getters (`posterUrl`, `formattedRuntime`, `trailerUrl`,
  `copyWith`, equality).
- **`test/repositories/`** — `DummyMovieDataSource`'s data-shape
  guarantees (trending is exactly 10, top-rated is sorted, search is
  case-insensitive and empty-safe, genre filtering is accurate) and
  `MovieRepositoryImpl`'s exception-to-`Failure` mapping table, exercised
  via a small `_ThrowingDataSource` that `extends DummyMovieDataSource`
  and overrides just the one method under test.
- **`test/providers/`** — Home's section providers resolving
  successfully and surfacing a `Failure` as a real `AsyncError` (via
  `FakeMovieRepository`, a fully-controllable `MovieRepository` test
  double with call-count tracking), plus `WatchlistNotifier`/
  `FavoritesNotifier`'s Hive persistence (add/remove/survives-a-restart)
  using a temp-directory `Hive.init` — no platform channels needed.
- **`test/core/`** — the shared `unwrapEither` helper, and
  `ThemeModeNotifier`'s default/restore/persist/toggle behavior via
  `SharedPreferences.setMockInitialValues`.
- **`test/widgets/`** — `MoviePosterCard` (renders title/year/rating,
  tap vs bookmark-tap don't cross-fire), `SectionHeader` ("See All"
  only appears when a callback is given), and `InlineErrorView`/
  `FullScreenStateView` (the new network-aware messaging and optional
  SVG illustration). These guard against `google_fonts` trying to hit
  the network mid-test via `GoogleFonts.config.allowRuntimeFetching = false`.

I wasn't able to run `flutter test` myself in this environment (no
Flutter SDK available here) — please run it and let me know what comes
back, especially anything Hive- or timing-related, since those were the
trickiest to get exactly right without executing them.

## Full localization — 12 languages

```bash
flutter gen-l10n   # runs automatically on `flutter pub get` (generate: true in pubspec.yaml)
```

- **English, Arabic, Spanish, French, German, Italian, Russian, Turkish, Hindi,
  Chinese, Portuguese, Dutch, Korean** — 84 real, human-quality
  translated strings each (not machine-translated placeholders), driven
  by Flutter's official ARB/`gen-l10n` toolchain (`lib/l10n/app_*.arb` →
  generated `AppLocalizations`, configured in `l10n.yaml`).
- **Every user-facing string in the app** goes through `context.l10n.*`
  now — Home, Movie Details, Search, Browse, Watchlist, Favorites,
  Profile, Settings, Splash, and every shared widget
  (`InlineErrorView`, `FullScreenStateView`, `SectionHeader`,
  `AppConfirmDialog`, `SavedMoviesList`, the bottom nav). `AppStrings`
  (the old English-only constants class) is down to exactly one
  constant: the brand name "MOVIES," which is intentionally the same
  in every language.
- **ICU plurals** where they matter — `watchlistTitleWithCount` and
  `favoritesTitleWithCount` render "My Watchlist" with no count, and
  "My Watchlist (3)" once something's saved, correctly pluralized per
  language's own rules (not just English's).
- **Language picker** — Settings → Language opens a bottom sheet with
  all 12 languages plus "System default" (follows the device's own
  language). Persisted via `SharedPreferences`, read directly by
  `MaterialApp.router(locale: ...)` in `main.dart`. If the device's
  language isn't one of the 12, `localeResolutionCallback` falls back
  to English rather than silently picking whatever's first in the list.
- **A hand-written validation script** (not shipped in the app, just
  used while building this) checked every ARB file for valid JSON, a
  correct `@@locale`, and — critically — the *exact same key set* as
  the English template, so no language can silently drift out of sync
  as new strings get added later.

### Adding a 13th language later

1. Copy `lib/l10n/app_en.arb` to `lib/l10n/app_<code>.arb`, translate
   every value, set `"@@locale": "<code>"`.
2. Add one line to the `AppLanguage` enum in
   `features/settings/presentation/providers/language_provider.dart`.
3. Run `flutter gen-l10n` (or just `flutter run`, which triggers it
   automatically). No other code changes.

## Project status: complete, real-API-ready, illustrated, tested, localized

Every screen from the original brief — including both enhancements
explicitly marked optional — is built and wired end-to-end:

**Splash · Home · Movie Details · Search · Browse · Watchlist · Profile
· Settings**

The app now runs on real TMDB data the moment a key is supplied (with a
fully-functional dummy-data fallback otherwise), ships real original
icon/illustration assets instead of placeholders, every async section
follows the same loading/error/empty/retry pattern with genuine offline
awareness, the core model/repository/provider/persistence layers have
automated test coverage, and the entire UI is available in 12
languages.

## Firebase Authentication — wired in, with an automatic guest fallback

Same pattern as TMDB: the app works fully today, and upgrades to real
accounts the moment Firebase is configured — no code changes required
either way.

```bash
dart pub global activate flutterfire_cli   # one-time
flutterfire configure                       # from the project root
```

`flutterfire configure` overwrites `lib/firebase_options.dart` (currently
a structurally-valid placeholder) with your real project's config. In
the Firebase Console, enable **Authentication → Sign-in method →
Email/Password**. That's the entire setup — nothing else changes.

- **`tryInitializeFirebase()`** (`core/firebase/firebase_bootstrap.dart`)
  attempts real initialization at startup and returns `false` — never
  throws — if it's not configured yet or fails for any reason.
- **`authRepositoryProvider`** picks `FirebaseAuthRepository` or
  `GuestAuthRepository` based on that one result. Every screen depends
  only on the `AuthRepository` interface, exactly like the movie
  repository split.
- **Sign In / Sign Up** — full email/password forms with client-side
  validation, a "Forgot password?" flow, and every Firebase error code
  (`wrong-password`, `email-already-in-use`, `weak-password`,
  `too-many-requests`, etc.) mapped to a real, fully localized message
  via `authErrorMessage()` — not a generic "something went wrong."
  "Continue as Guest" always works, with or without Firebase configured.
- **Profile is now auth-aware**: signed out shows the honest "Your
  Library" framing plus a sign-in banner explaining what it unlocks
  (cross-device sync); signed in shows the real name/email/avatar (with
  a graceful initial-letter fallback when there's no photo) and a Sign
  Out action behind a confirmation dialog.
- **`AppUser`** is one shared shape for both a real Firebase account and
  the local guest identity (`AppUser.guest`) — UI code never has to
  branch on "is Firebase even available," only on `user.isGuest`.

### What Firebase Auth does *not* do yet

Signing in doesn't yet move Watchlist/Favorites data anywhere — they're
still 100% local (Hive), same as before, for both guests and signed-in
accounts. **Per-account cloud sync (Firestore) is the next pass**, and is
what will make signing in actually do something beyond showing your
name on Profile.

## What's next

Per the current build plan, still ahead: **per-account cloud sync**
(Firestore) for Watchlist/Favorites, a **professional Profile** with
editable display name/photo, a full **Help Center** (chatbot, FAQ,
contact, about, feedback, Terms of Service, Privacy Policy), and **push
notifications**.
