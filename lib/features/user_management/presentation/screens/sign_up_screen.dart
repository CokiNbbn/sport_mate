import 'package:flutter/material.dart';

import '../../../../core/constants/app_assets.dart';
import '../../../../core/widgets/large_button.dart';
import '../widgets/auth_prompt.dart';
import '../widgets/auth_textfield.dart';
import 'sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
            const SizedBox(height: 50),
            const AuthTextfield(
              hintText: 'Name',
              prefixIcon: Icons.person_outline,
            ),
            const SizedBox(height: 20),
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
            const SizedBox(height: 20),
            const AuthTextfield(
              hintText: 'Confirm Password',
              prefixIcon: Icons.lock_outline,
              obscureText: true,
            ),
            const SizedBox(height: 40),
            LargeButton(
              label: 'Sign Up',
              onPressed: () {},
            ),
            AuthPrompt(
              prompt: 'Already have an account?',
              label: 'Sign In',
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignInScreen(),
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
