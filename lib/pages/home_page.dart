import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void _logout(BuildContext context) {
    Navigator.pop(context, '/login');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => _logout(context),
            icon: Icon(Icons.logout_outlined),
          ),
        ],
      ),
      body: const Center(child: Text('Welcome to the Home Page!')),
    );
  }
}
