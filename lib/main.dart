import 'package:flutter/material.dart';
import 'core/constants/app_colors.dart';
import 'features/user_management/presentation/screens/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sport Mate',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.color1,
        ),
        useMaterial3: true,
        fontFamily: 'Poppins',
      ),
      home: const SignInScreen(),
    );
  }
}
