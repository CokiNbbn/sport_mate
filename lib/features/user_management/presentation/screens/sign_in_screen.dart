import 'package:flutter/material.dart';

import '../../../../bottom_navbar.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/large_button.dart';
import '../widgets/auth_textfield.dart';
import '../widgets/auth_prompt.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Center(
              child: Image.asset(
                AppAssets.logoSportMate,
                height: 100,
              ),
            ),
            const SizedBox(height: 100),
            const AuthTextfield(
              hintText: 'Email',
              prefixIcon: Icons.email_outlined,
            ),
            const SizedBox(height: 20),
            const AuthTextfield(
              hintText: 'Password',
              prefixIcon: Icons.lock_outline,
              obscureText: true,
            ),
            const SizedBox(height: 40),
            LargeButton(
              label: 'Sign In',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomNavbar(),
                  ),
                );
              },
            ),
            AuthPrompt(
              prompt: 'Don\'t have an account?',
              label: 'Sign Up',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpScreen(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
