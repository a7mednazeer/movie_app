# Movies — Premium Flutter Movie App

A production-grade Flutter movie discovery app built with Clean
Architecture, MVVM-style separation, and Riverpod for state management.
This is being built **page by page**. This drop contains: the
foundational architecture, and complete **Splash**, **Home**,
**Movie Details**, and **Search** screens.

## What's included in this step

```
lib/
├── main.dart
├── models/                # Movie, Genre, CastMember, Review
├── repositories/           # MovieRepository contract + dummy-backed impl + data source
├── providers/              # App-wide DI (repository, API client) + Watchlist + Favorites state
├── core/
│   ├── constants/           # Colors, text styles, spacing, strings, asset paths, durations
│   ├── theme/                # Centralized Material 3 light/dark ThemeData + theme-mode provider
│   ├── routes/                # GoRouter config — bottom-nav shell + Movie Details route
│   ├── network/                # Dio API client, TMDB endpoint constants, connectivity checker
│   ├── errors/                  # Failure (domain) + Exception (data) types
│   ├── utils/                    # Logger, Either-unwrap helper, external URL launcher helper
│   ├── extensions/                 # BuildContext convenience extensions
│   └── widgets/                     # Shared widgets: poster/wide movie cards, MovieRailSection,
│                                       shimmer, error views, section header, genre chip, bottom-nav shell
└── features/
    ├── splash/           → ✅ Complete
    ├── home/              → ✅ Complete
    ├── movie_details/     → ✅ Complete
    ├── search/            → ✅ Complete
    ├── browse/            → Temporary placeholder — next screen to build
    └── watchlist/         → Temporary placeholder (already functional: toggling a card's
                              bookmark icon anywhere in the app really adds/removes it here)
```

## Home Screen — what it does

- **Featured banner** — auto-advancing carousel (`PageView` + a 6s timer)
  built from the top 5 trending movies: backdrop image, gradient
  scrim, title, year/runtime/certification/rating, a play button that
  opens Movie Details, a watchlist toggle, and `smooth_page_indicator`
  dots.
- **Categories** — a horizontal row of genre chips sourced from the
  repository; tapping one deep-links to Browse with `genreId`/`genreName`
  query params already wired through GoRouter.
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
into "More Like This" for nested navigation. Tap Search in the bottom
nav for live search with recent searches and trending suggestions.
Browse/Watchlist still show temporary (clearly-labeled) placeholders —
that's expected per the page-by-page process.

## Next steps (in order)

1. ~~Home Screen~~ ✅
2. ~~Movie Details~~ ✅
3. ~~Search~~ ✅
4. **Browse** — genre grid
5. **Watchlist** — swipe-to-remove list backed by Hive persistence
6. Profile / Settings (optional enhancements)

Say "continue" (or "build Browse next") whenever you're ready.
