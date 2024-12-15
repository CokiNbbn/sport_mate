import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class BottomNavbarItem extends StatelessWidget {
  const BottomNavbarItem({
    super.key,
    required this.label,
    required this.selectedIcon,
    required this.unselectedIcon,
  });

  final String label;
  final IconData selectedIcon;
  final IconData unselectedIcon;

  @override
  Widget build(BuildContext context) {
    return NavigationDestination(
      icon: Icon(unselectedIcon),
      selectedIcon: Icon(
        selectedIcon,
        color: AppColors.color1,
      ),
      label: label,
    );
  }
}
