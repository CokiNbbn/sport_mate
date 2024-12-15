import 'package:flutter/material.dart';
import '../widgets/friend_list_tile.dart';

class FriendList extends StatelessWidget {
  const FriendList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const FriendListTile(),
        const FriendListTile(),
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(),
          title: Text(
            'Perwira Annisa',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          trailing: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 15,
                width: 15,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
              Text(
                'Offline',
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
