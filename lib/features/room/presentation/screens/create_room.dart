import 'package:flutter/material.dart';

import '../widgets/input_num_of_players.dart';
import '../../../../core/constants/app_strings.dart';
import '../widgets/date_picker.dart';
import '../widgets/input_info_room.dart';
import '../widgets/item_picker_dropdown.dart';
import '../widgets/time_picker.dart';
import '../../../../core/widgets/large_button.dart';

class CreateRoom extends StatelessWidget {
  const CreateRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.createRoomText),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InputInfoRoom(
                      title: 'Title',
                      maxLength: 50,
                    ),
                    InputInfoRoom(
                      title: 'Description',
                      maxLength: 200,
                      minLines: 5,
                      maxLines: 5,
                    ),
                    ItemPickerDropdown(
                      icon: Icons.sports_basketball_outlined,
                      title: 'Sport',
                      items: [
                        'Badminton',
                        'Basketball',
                        'Futsal',
                        'Football',
                        'Volleyball',
                      ],
                      label: 'Select sport',
                    ),
                    SizedBox(height: 20),
                    DatePicker(),
                    SizedBox(height: 20),
                    TimePicker(),
                    SizedBox(height: 20),
                    ItemPickerDropdown(
                      icon: Icons.leaderboard_outlined,
                      title: 'Level',
                      items: [
                        'Newbie',
                        'Beginner',
                        'Intermediate',
                        'Advanced',
                        'Pro',
                      ],
                      label: 'Select level',
                    ),
                    SizedBox(height: 20),
                    InputNumOfPlayers(),
                    SizedBox(height: 20),
                    InputInfoRoom(
                      title: 'Location',
                      maxLength: 200,
                      minLines: 5,
                      maxLines: 5,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 0,
              blurRadius: 3,
              offset: Offset(0, -3),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
        child: LargeButton(
          label: AppStrings.createRoomText,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
