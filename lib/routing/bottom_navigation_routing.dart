import 'package:go_router/go_router.dart';
import 'package:go_router_bottom_navigation/pages/bottom_navigation_screens/base_screen.dart';
import 'package:go_router_bottom_navigation/pages/bottom_navigation_screens/home_screen.dart';
import 'package:go_router_bottom_navigation/pages/bottom_navigation_screens/setting_screen.dart';
import 'package:go_router_bottom_navigation/pages/bottom_navigation_screens/tour_list_page.dart';
import 'package:go_router_bottom_navigation/routing/router.dart';



ShellRoute bottomNavigationRouting() {
  return ShellRoute(
    builder: (context, state, child) {
      return BaseScreen(child: child);
    },
    routes: [

      GoRoute(
        path: RoutePath.home.path,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: HomeScreen(),
        ),
      ),
      GoRoute(
        path: RoutePath.tour.path,
        pageBuilder: (context, state) => const NoTransitionPage(
            child: TourListScreen()),
      ),

      GoRoute(
        path: RoutePath.settings.path,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SettingsScreen(),
        ),

      ),
    ],
  );
}