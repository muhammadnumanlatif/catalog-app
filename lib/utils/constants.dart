import 'package:catalogbypk/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CAColor {
  static const secondary = Color(0xffe75480);
  static const light = Color(0xffff87af);
  static const dark = Color(0xffb01a54);
  static const black = Color(0xff000000);
  static Color white = Color(0xffffffff).withOpacity(0.85);
  static const success = Colors.green;
  static const error = Colors.red;
  static const transparent = Colors.transparent;
}

class CARoute {
  static const loginRoute = '/login';
  static const homeRoute = '/home';
}

class CATheme {
  static ThemeData light(BuildContext context) => ThemeData(
        textTheme: GoogleFonts.adaminaTextTheme().copyWith(
          bodyText1: TextStyle(
            color: CAColor.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
          headline1: TextStyle(
            color: CAColor.white,
            fontSize: 22,
            fontWeight: FontWeight.w400,
          ),
        ),
        primaryColor: CAColor.dark,
        accentColor: CAColor.secondary,
        appBarTheme: AppBarTheme(
          color: CAColor.dark.withOpacity(0.75),
          elevation: 0,
          iconTheme: IconThemeData(
            color: CAColor.white,
          ),
        ),
      );
  static ThemeData dark(BuildContext context) => ThemeData(
        textTheme: GoogleFonts.latoTextTheme(),
        brightness: Brightness.dark,
        // primaryColor: CAColor.dark,
        // accentColor: CAColor.secondary,
        // appBarTheme: AppBarTheme(
        //   color: CAColor.transparent,
        //   elevation: 0,
        //   iconTheme: IconThemeData(
        //     color: CAColor.dark,
        //   ),
        //   textTheme: Theme.of(context).textTheme,
        // ),
      );

  static BoxDecoration gradientData = BoxDecoration(
    //color: CAColor.dark.withOpacity(0.75),
    gradient: LinearGradient(
      colors: [
        CAColor.dark.withOpacity(0.75),
        CAColor.dark,
      ],
      begin: Alignment.topLeft,
      end: Alignment.centerRight,
    ),
  );
  static BoxDecoration gradientLogin = BoxDecoration(
    //color: CAColor.dark.withOpacity(0.75),
    gradient: LinearGradient(
      colors: [
        Colors.grey,
        CAColor.white,
        //CColor.dark.withOpacity(0.4),
        //CAColor.dark.withOpacity(0.2),
      ],
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      
    ),
  );
}
