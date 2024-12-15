import 'package:flutter/material.dart';

import 'core/constants/app_strings.dart';
import 'core/widgets/bottom_navbar_item.dart';
import 'features/profile/presentation/screens/profile_screen.dart';
import 'features/room/presentation/screens/explore_screen.dart';
import 'features/social/presentation/screens/social_screen.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _MainScreenState();
}

class _MainScreenState extends State<BottomNavbar> {
  final List<Widget> _screens = const [
    ExploreScreen(),
    SocialScreen(),
    
    ProfileScreen(),
  ];

  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        selectedIndex: _currentPageIndex,
        destinations: const [
          BottomNavbarItem(
            label: AppStrings.exploreText,
            selectedIcon: Icons.near_me,
            unselectedIcon: Icons.near_me_outlined,
          ),
          BottomNavbarItem(
            label: AppStrings.socialText,
            selectedIcon: Icons.chat_bubble,
            unselectedIcon: Icons.chat_bubble_outline,
          ),
          BottomNavbarItem(
            label: AppStrings.profileText,
            selectedIcon: Icons.person,
            unselectedIcon: Icons.person_outlined,
          ),
        ],
      ),
      body: _screens[_currentPageIndex],
    );
  }
}
