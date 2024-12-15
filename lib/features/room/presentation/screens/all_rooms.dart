import 'package:flutter/material.dart';

import '../widgets/room_card.dart';

class AllRooms extends StatelessWidget {
  const AllRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const RoomCard();
      },
    );
  }
}
