import 'utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CAColor {
  static const secondary = Colors.blueGrey;
  static Color light = Colors.grey.shade500;
  static const dark = Colors.grey;
  static const black = Color(0xff000000);
  static Color white = Color(0xffffffff).withOpacity(0.85);
  static const success = Colors.green;
  static const error = Colors.red;
  static const transparent = Colors.transparent;
}

class CARoute {
  static const homeRoute = '/home';
  static const cartRoute = '/cart';
  static const loginRoute = '/login';
  static const homeDetailRoute = '/home-detail';
}

class CATheme {
  static ThemeData light(BuildContext context) => ThemeData(
        textTheme: GoogleFonts.adaminaTextTheme().copyWith(
          bodyText1: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          headline1: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        cardColor: CAColor.dark,
        canvasColor: CAColor.light,
        primaryColor: CAColor.dark,
        accentColor: CAColor.secondary,
        appBarTheme: AppBarTheme(
          color: CAColor.dark.withOpacity(0.75),
          elevation: 0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              CAColor.secondary,
            ),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            ),
          ),
        ),
      );
  static ThemeData dark(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );

  static BoxDecoration gradientData = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.grey,
        CAColor.white,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ),
  );
  static BoxDecoration gradientLogin = BoxDecoration(
    gradient: LinearGradient(
      colors: [
        Colors.grey,
        CAColor.white,
      ],
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
    ),
  );
}

