import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_style.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.notificationsText),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.notifications_active_outlined),
            ),
            title: const Text(
              'Sport Mate Feedback',
              style: AppTextStyle.notificationTitle,
            ),
            subtitle: const Text(
              'Hi Wildan, lorem ipsum dolor sit amet',
              style: AppTextStyle.notificationSubtitle,
            ),
            trailing: Text('Nov ${index + 1}'),
            onTap: () {},
          );
        },
      ),
    );
  }
}
