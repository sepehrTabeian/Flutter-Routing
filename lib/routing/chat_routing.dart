


import 'package:go_router/go_router.dart';
import 'package:go_router_bottom_navigation/routing/router.dart';

import '../models/chat_model.dart';
import '../pages/chat_screen.dart';

GoRoute chatRouting() {
  return GoRoute(
    path: RoutePath.chat.path,
    builder: (context, state) {
      final chat = state.extra! as Chat;
      return   ChatScreen(chat: chat);
    },
  );
}
