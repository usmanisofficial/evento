import 'package:eventapp/splash.dart';
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
        // "/": (context) => const LoginPage(),
        MyRoutes.welcomeScreenRoute: (context) => const WelcomeScreen(),
        MyRoutes.loginRoute: (context) => const LoginPage(),
        MyRoutes.splashRoute: (context) => const Splash(),
      },
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
