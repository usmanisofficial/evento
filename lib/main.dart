import 'package:eventapp/splash_one.dart';
import 'package:eventapp/utils/route.dart';
import 'package:eventapp/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        // "/": (context) => LoginPage(),
        MyRoutes.splashOneRoute: (context) => const SplashOne(),
        MyRoutes.welcomeScreenRoute: (context) => const WelcomeScreen(),
      },
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
