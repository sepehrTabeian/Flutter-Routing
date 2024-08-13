
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_bottom_navigation/models/chat_model.dart';
import 'package:go_router_bottom_navigation/routing/router.dart';


class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          context.push(RoutePath.chat.path,extra: Chat(name: 'Sepehr', message: 'Hello Hadi'));
        },
        child: const Text('Go to Chat'),
      ),
    );
  }
}
