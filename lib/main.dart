import 'package:eventapp/splash_one.dart';
import 'package:eventapp/splash_three.dart';
import 'package:eventapp/splash_two.dart';
import 'package:eventapp/utils/route.dart';
import 'package:eventapp/utils/themes.dart';
import 'package:eventapp/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyThemes.lightTheme(context),
      routes: {
        // "/": (context) => LoginPage(),
        MyRoutes.splashOneRoute: (context) => const SplashOne(),
        MyRoutes.splashTwoRoute: (context) => const SplashTwo(),
        MyRoutes.splashThreeRoute: (context) => const SplashThree(),
        MyRoutes.welcomeScreenRoute: (context) => const WelcomeScreen(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
      },
      home: const WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
