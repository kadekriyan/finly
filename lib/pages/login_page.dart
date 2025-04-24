import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3B82F6),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 180),
            Text(
              'Login',
              style: GoogleFonts.plusJakartaSans(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 60),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 80),
              child: TextField(
                decoration: InputDecoration(
                  hoverColor: Colors.red,
                  fillColor: Colors.white,
                  focusColor: Colors.yellow,
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
