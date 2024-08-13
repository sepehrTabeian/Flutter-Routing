
import 'package:go_router/go_router.dart';
import 'package:go_router_bottom_navigation/pages/login.dart';
import 'package:go_router_bottom_navigation/routing/router.dart';

GoRoute initialRouting() {
  return GoRoute(
    path: RoutePath.initial.path,
    pageBuilder: (context, state) => const NoTransitionPage(
      child: LoginPage(),
    ),
  );
}

