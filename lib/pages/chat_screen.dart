import 'package:flutter/material.dart';
import 'package:go_router_bottom_navigation/models/chat_model.dart';

class ChatScreen extends StatelessWidget {
  final Chat chat;
  const ChatScreen({required this.chat ,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(chat.name),),
      body: Center(child: Text(chat.message),),
    );
  }
}
