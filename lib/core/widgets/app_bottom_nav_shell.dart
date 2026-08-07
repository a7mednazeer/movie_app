import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../extensions/context_extensions.dart';

/// Shared bottom-navigation chrome for the four main tabs (Home, Search,
/// Browse, Watchlist). Wraps GoRouter's [StatefulNavigationShell] so each
/// tab keeps its own scroll position and navigation stack when switching
/// back and forth — exactly how Home's "See All" pushes or Search's
/// results should behave.
class AppBottomNavShell extends StatelessWidget {
  const AppBottomNavShell({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationShell.currentIndex,
        onTap: (int index) => navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        ),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            activeIcon: const Icon(Icons.home_rounded),
            label: context.l10n.navHome,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.search_outlined),
            activeIcon: const Icon(Icons.search_rounded),
            label: context.l10n.navSearch,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.grid_view_outlined),
            activeIcon: const Icon(Icons.grid_view_rounded),
            label: context.l10n.navBrowse,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.bookmark_border_rounded),
            activeIcon: const Icon(Icons.bookmark_rounded),
            label: context.l10n.navWatchlist,
          ),
        ],
      ),
    );
  }
}
