import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 25),
          children: [
            const SizedBox(height: 80),
            // Logo Finli App
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/amcc-logo-new-blue.png'),
                Text(
                  'Finli',
                  style: GoogleFonts.plusJakartaSans(
                    color: Color(0xFF3B82F6),
                    fontSize: 32,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 43),
            Image.asset('assets/img_login.png', height: 250),
            SizedBox(height: 43),
            Text(
              'Selamat Datang',
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              'Silahkan login untuk melanjutkan',
              textAlign: TextAlign.center,
              style: GoogleFonts.plusJakartaSans(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w100,
              ),
            ),
            SizedBox(height: 46),
            // Email Field
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: Colors.grey),
              ),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  icon: Icon(Icons.person, color: Colors.grey),
                  hintText: "Email address",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Password Field
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(28),
                border: Border.all(color: Colors.grey),
              ),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.lock, color: Colors.grey),
                  hintText: "Password",
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(height: 62),
            ElevatedButton(
              onPressed: () {
                final email = _emailController.text.trim();
                final password = _passwordController.text.trim();

                if (email == 'admin' && password == "123") {
                  Navigator.pushNamed(context, '/home');
                } else {
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(title: Text("invalid login")),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF3B82F6),
                padding: const EdgeInsets.symmetric(
                  horizontal: 200,
                  vertical: 24,
                ),
              ),
              child: Text(
                'Login',
                style: GoogleFonts.plusJakartaSans(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
