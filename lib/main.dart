import 'package:finly/bloc/bloc/auth_bloc.dart';
import 'package:finly/pages/home_page.dart';
import 'package:finly/pages/login_page.dart';
import 'package:finly/pages/main_page.dart';
import 'package:finly/pages/onboarding_page.dart';
import 'package:finly/pages/profile_page.dart';
import 'package:finly/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => AuthBloc())],
      child: MaterialApp(
        title: "Finly",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        routes: {
          '/': (context) => SplashPage(),
          '/onboarding': (context) => OnboardingPage(),
          '/login': (context) => LoginPage(),
          '/home': (context) => HomePage(),
          '/main': (context) => MainPage(),
          '/profile': (context) => ProfilePage(),
        },
      ),
    );
  }
}
