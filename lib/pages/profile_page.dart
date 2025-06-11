import 'package:finly/theme/color.dart';
import 'package:finly/widgets/profile_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            decoration: BoxDecoration(
              color: AppColor.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 32),
                CircleAvatar(radius: 60),
                SizedBox(height: 12),
                Text(
                  'Riyan',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColor.white,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  'riyan@gmail.com',
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColor.grey,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 34),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  ProfileButton(
                    onTap: () {},
                    icon: Icon(Icons.person),
                    title: 'Ubah Profile',
                  ),
                  SizedBox(height: 40),
                  ProfileButton(
                    onTap: () {},
                    icon: Icon(Icons.settings),
                    title: 'Ubah Pengaturan',
                  ),
                  SizedBox(height: 40),
                  ProfileButton(
                    onTap: () {},
                    icon: Icon(Icons.key),
                    title: 'Password',
                  ),
                  SizedBox(height: 40),
                  ProfileButton(
                    onTap: () {},
                    icon: Icon(Icons.privacy_tip),
                    title: 'Kebijakan Privasi',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, bottom: 40),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  child: Text(
                    'Logout',
                    style: GoogleFonts.plusJakartaSans(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
