import 'package:go_router/go_router.dart';

import 'package:go_router_bottom_navigation/routing/bottom_navigation_routing.dart';
import 'package:go_router_bottom_navigation/routing/chat_routing.dart';
import 'package:go_router_bottom_navigation/routing/initial_routing.dart';
import 'package:go_router_bottom_navigation/routing/tour_detail_routing.dart';

enum RoutePath{
  // Login
  initial(path: '/'),
  // BottomNavigation
  home(path: '/home'),
  tour(path: '/tour'),
  settings(path: '/settings'),
  // Inner Screens
  tourDetail(path: '/tour_detail'),
  chat(path: '/chat');
  final String path;
  const RoutePath({required this.path});

}

final GoRouter routerConfig = GoRouter(
  initialLocation: RoutePath.initial.path,
  routes: [
    bottomNavigationRouting(),
    initialRouting(),
    chatRouting(),
    tourDetailRouting(),
  ],
);



