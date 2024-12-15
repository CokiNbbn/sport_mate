import 'package:flutter/material.dart';
import 'package:sport_mate/core/constants/app_colors.dart';

class MemberAvatar extends StatelessWidget {
  const MemberAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 5),
      child: CircleAvatar(
        backgroundColor: AppColors.color1,
        child: Text(
          'AA',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
