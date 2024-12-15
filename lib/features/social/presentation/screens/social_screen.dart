import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_style.dart';
import 'chat.dart';
import 'friend_list.dart';
import 'search_screen.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SearchScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.search),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: AppStrings.chatText),
              Tab(text: AppStrings.friendListText),
            ],
          ),
          title: const Text(
            AppStrings.socialText,
            style: AppTextStyle.text1,
          ),
        ),
        body: const TabBarView(
          children: [
            Chat(),
            FriendList(),
          ],
        ),
      ),
    );
  }
}
