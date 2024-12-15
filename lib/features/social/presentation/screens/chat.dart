import 'package:flutter/material.dart';
import '../widgets/chat_tile.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) => const ChatTile(),
    );
  }
}
