# Movies — Premium Flutter Movie App

A production-grade Flutter movie discovery app built with Clean
Architecture, MVVM-style separation, and Riverpod for state management.
This is being built **page by page**. This drop contains: the
foundational architecture, a complete **Splash Screen**, and a complete
**Home Screen**.

## What's included in this step

```
lib/
├── main.dart
├── models/                      # Shared domain entities (Movie, Genre)
├── repositories/                # MovieRepository contract + dummy-backed impl + data source
├── providers/                   # App-wide DI (repository, API client) + Watchlist state
├── core/
│   ├── constants/                # Colors, text styles, spacing, strings, asset paths, durations
│   ├── theme/                    # Centralized Material 3 light/dark ThemeData + theme-mode provider
│   ├── routes/                   # GoRouter config — bottom-nav shell + Movie Details route
│   ├── network/                  # Dio API client, TMDB endpoint constants, connectivity checker
│   ├── errors/                   # Failure (domain) + Exception (data) types
│   ├── utils/                    # App-wide logger
│   ├── extensions/                # BuildContext convenience extensions
│   └── widgets/                   # Shared widgets: poster/wide movie cards, shimmer, error views,
│                                    section header, genre chip, bottom-nav shell
└── features/
    ├── splash/          → ✅ Complete
    ├── home/             → ✅ Complete
    ├── search/           → Temporary placeholder — next screen to build
    ├── browse/           → Temporary placeholder
    ├── watchlist/        → Temporary placeholder (already functional: toggling a card's
    │                        bookmark icon anywhere in the app really adds/removes it here)
    └── movie_details/    → Temporary placeholder (real navigation + Hero animation already wired)
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
  horizontal rails, each backed by its own `FutureProvider` so a slow or
  failed request in one rail never blocks the others. Each rail has its
  own shimmer skeleton, inline retry-on-error state, and empty-state
  handling.
- **Recommended For You** — a vertical section using a distinct wide
  card layout (thumbnail + metadata + rating + watchlist button) so Home
  reads as a genuine mix of horizontal and vertical sections.
- **Pull-to-refresh** — `refreshHome()` invalidates every section
  provider and awaits them together.
- **Watchlist toggle** — every poster card's bookmark icon is fully
  functional right now via `watchlistProvider` (in-memory today; will
  persist to Hive once the Watchlist screen is built).
- **Navigation** — tapping any movie pushes Movie Details with a shared
  Hero poster transition; the bottom nav (Home/Search/Browse/Watchlist)
  is a `StatefulShellRoute`, so each tab keeps its own scroll position
  and back-stack when switching around.

## Architecture decisions

- **State management:** Riverpod (`flutter_riverpod`). Data flows as
  `FutureProvider<List<Movie>>` per section, each unwrapping the
  repository's `Either<Failure, T>` so failures surface naturally as
  `AsyncValue.error` — no try/catch in any widget.
- **Repository pattern:** `MovieRepository` (abstract) → `MovieRepositoryImpl`
  (currently backed by `DummyMovieDataSource`). See the doc comment atop
  `movie_repository_impl.dart` for the exact 3-step swap to a real TMDB
  remote data source — no other file changes.
- **Navigation:** GoRouter, configured centrally in `core/routes/app_router.dart`.
  Home/Search/Browse/Watchlist live inside one `StatefulShellRoute`;
  Movie Details is a top-level route so it opens full-screen over the
  bottom nav.
- **Networking:** `Dio` wrapped by `ApiClient`, pre-wired for **TMDB**
  (`core/network/api_endpoints.dart`).
- **Theming:** One centralized `AppTheme` (Material 3) with light and
  dark `ThemeData`.

## Wiring up the real TMDB API later

1. Get a free API key from https://www.themoviedb.org/settings/api
2. Run the app with:
   ```bash
   flutter run --dart-define=TMDB_API_KEY=your_key_here
   ```
3. Create `MovieRemoteDataSource` matching `DummyMovieDataSource`'s method
   signatures, calling `ApiClient.get(...)` and mapping JSON via
   `Movie.fromJson` / `Genre.fromJson`. Swap it into
   `MovieRepositoryImpl`'s constructor — nothing else changes.

## Adding real images later

Drop files into `assets/images/`, `assets/posters/`, or `assets/icons/`
matching the filenames referenced in `core/constants/asset_paths.dart`.
Movie posters/backdrops come from `Movie.posterUrl`/`backdropUrl`
(built from TMDB's image CDN once real data flows in) — until then,
cards gracefully fall back to a clean icon-based placeholder rather than
a broken-image icon.

## Running this drop

```bash
flutter pub get
flutter run
```

You'll see the splash animation, then land on a fully working Home
screen. Tapping Search/Browse/Watchlist in the bottom nav, or tapping any
movie, is all real navigation to temporary (clearly-labeled) placeholder
screens — that's expected per the page-by-page process.

## Next steps (in order)

1. ~~Home Screen~~ ✅
2. **Movie Details** — backdrop, cast, similar movies, reviews, trailer, expandable description
3. **Search** — live search, suggestions, recent searches
4. **Browse** — genre grid
5. **Watchlist** — swipe-to-remove list backed by Hive persistence
6. Profile / Settings (optional enhancements)

Say "continue" (or "build Movie Details next") whenever you're ready.

