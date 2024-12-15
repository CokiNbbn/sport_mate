import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_style.dart';
import '../widgets/filter_bottom_sheet.dart';
import 'create_room.dart';
import 'all_rooms.dart';
import 'my_rooms.dart';
import 'notification_screen.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: const TabBar(
            tabs: [
              Tab(text: AppStrings.allRoomsText),
              Tab(text: AppStrings.myRoomsText),
            ],
          ),
          actions: [
            Wrap(
              children: [
                IconButton(
                  icon: const Badge(
                    child: Icon(Icons.notifications_none_outlined),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationScreen(),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.filter_list_rounded),
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return const FilterBottomSheet();
                      },
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateRoom(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ],
          title: const Text(
            AppStrings.exploreText,
            style: AppTextStyle.text1,
          ),
        ),
        body: const TabBarView(
          children: [
            AllRooms(),
            MyRooms(),
          ],
        ),
      ),
    );
  }
}
