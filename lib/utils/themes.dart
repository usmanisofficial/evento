import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        cardColor: Colors.white,
        canvasColor: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.black),
            toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
            titleTextStyle: Theme.of(context).textTheme.headline6),
        // colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue),
      );
  static Color creamColor = const Color(0xfff5f5f5);
}
