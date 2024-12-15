// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sport_mate/features/room/presentation/widgets/member_avatar.dart';

import '../../../../core/widgets/large_button.dart';
import '../../../../core/constants/app_strings.dart';

class DetailRoom extends StatelessWidget {
  const DetailRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(
              onTap: () {},
              child: const Icon(Icons.share_outlined),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Slow Mabar Yukk',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.sports_tennis_outlined, size: 16),
                  Text(' Badminton'),
                  Text(' - '),
                  Icon(Icons.location_on_outlined, size: 16),
                  Text(' Kota Surabaya'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  MemberAvatar(),
                  MemberAvatar(),
                  MemberAvatar(),
                  MemberAvatar(),
                  MemberAvatar(),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text('5/12 >'),
                  )
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.leaderboard_outlined),
                            SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Skill - Beginner',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Players with skill Beginner can join',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.calendar_month_outlined),
                            SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kamis, 5 Desember 2024',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '20:00 - 22:00 WIB',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on_outlined),
                            SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Lapangan Sudirman',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Lapangan A',
                                  style: TextStyle(color: Colors.grey[700]),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Divider(),
                        SizedBox(height: 10),
                        Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Admin',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        ListTile(
                          leading: CircleAvatar(),
                          title: Text(
                            'Wildan',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              Icon(Icons.star_rounded, color: Colors.amber),
                              Text(' 4.9'),
                              Text(' (9 Reviews)'),
                            ],
                          ),
                          trailing: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                            ),
                            onPressed: () {},
                            child: Icon(Icons.chat_outlined),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Location',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'JL BUMI MARINA EMAS BARAT I/15, Keputih, Sukolilo, Surabaya',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined, size: 14),
                            Text('1.2 km'),
                            SizedBox(width: 10),
                            Icon(Icons.access_time, size: 14),
                            Text('6 minutes'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Image.asset('assets/images/maps.jpg'),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
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
          label: AppStrings.joinRoomText,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
