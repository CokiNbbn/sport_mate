import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_text_style.dart';
import 'edit_profile_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          AppStrings.profileText,
          style: AppTextStyle.text1,
        ),
        
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const CircleAvatar(),
            title: const Text(
              'Wildan Nababan',
              style: AppTextStyle.text2,
            ),
            subtitle: const Text('wildannababan@gmail.com'),
            trailing: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EditProfileScreen(),
                  ),
                );
              },
              icon: const Icon(Icons.edit),
            ),
          ),
          const SizedBox(height: 20),
          ListTile(
            leading: const Icon(Icons.privacy_tip_outlined),
            title: const Text('Privacy settings'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.watch),
            title: const Text('Connect your wearables'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.card_giftcard_outlined),
            title: const Text('Referral code'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.sticky_note_2_outlined),
            title: const Text('Terms and conditions'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.shield_outlined),
            title: const Text('Privacy policy'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.star_border),
            title: const Text('Rate us'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.delete_outline),
            title: const Text('Delete account'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined),
            title: const Text('Log out'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(AppStrings.versionText),
          ),
        ],
      ),
    );
  }
}
