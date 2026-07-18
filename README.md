# Movies — Premium Flutter Movie App

A production-grade Flutter movie discovery app built with Clean
Architecture, MVVM-style separation, and Riverpod for state management.
This is being built **page by page**. Every screen from the original
brief is now complete, including both optional enhancements:
**Splash**, **Home**, **Movie Details**, **Search**, **Browse**,
**Watchlist**, **Profile**, and **Settings**.

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
    ├── watchList/         → ✅ Complete
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

## Wiring up the real TMDB API later

1. Get a free API key from https://www.themoviedb.org/settings/api
2. Run the app with:
   ```bash
   flutter run --dart-define=TMDB_API_KEY=your_key_here
   ```
3. Create `MovieRemoteDataSource` matching `DummyMovieDataSource`'s method
   signatures (including `fetchCredits`, `fetchReviews`), calling
   `ApiClient.get(...)` and mapping JSON via `Movie.fromJson` /
   `Genre.fromJson` / `CastMember.fromJson` / `Review.fromJson`. Swap it
   into `MovieRepositoryImpl`'s constructor — nothing else changes.
4. To enable real trailers, merge the `/movie/{id}/videos` response's
   YouTube key into the `video_key` field before constructing `Movie`.

## Adding real images later

Drop files into `assets/images/`, `assets/posters/`, or `assets/icons/`
matching the filenames referenced in `core/constants/asset_paths.dart`.
Movie posters/backdrops come from `Movie.posterUrl`/`backdropUrl` — until
real data flows in, cards and the details header gracefully fall back to
a clean icon-based placeholder rather than a broken-image icon.

## Running this drop

```bash
flutter pub get
flutter run
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

## New shared infrastructure this step

- **`SavedMoviesList`** (`core/widgets`) — the swipe-to-remove/Undo/empty/
  loading/error list pattern, extracted once Favorites needed the exact
  same behavior as Watchlist. `WatchlistScreen` was refactored to use it
  too, so that logic now lives in exactly one place instead of two.
- **`favoriteMoviesProvider`** mirrors `watchlistMoviesProvider` exactly
  (ids → resolved `Movie`s, most-recent-first, parallel fetch).

## Project status: complete

Every screen from the original brief — including both enhancements
explicitly marked optional — is built and wired end-to-end:

**Splash · Home · Movie Details · Search · Browse · Watchlist · Profile
· Settings**

The architecture is ready for the real TMDB API (see above), Light/Dark
theming is centralized and complete, and every async section in the app
follows the same loading/error/empty/retry pattern. From here, natural
next steps would be swapping in the real TMDB data source, adding real
image assets, or writing tests against the repository/provider layer —
happy to pick up any of those, or revisit/polish anything already built.
