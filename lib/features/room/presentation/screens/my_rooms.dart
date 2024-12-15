import 'package:flutter/material.dart';

import '../widgets/room_card.dart';

class MyRooms extends StatelessWidget {
  const MyRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return const RoomCard();
      },
    );
  }
}
