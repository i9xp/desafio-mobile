import 'package:flutter/material.dart';

class I9XPTheme {
  ThemeData get theme => ThemeData(
        brightness: Brightness.dark,
        // primarySwatch: musk,
        accentColor: Color(0xFFF9C705),
        fontFamily: 'NeusaNextStd',
        // backgroundColor: musk,
        canvasColor: baseColorI9XP[900],
        textTheme: TextTheme(
            button: TextStyle(fontWeight: FontWeight.w700),
            title: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        // iconTheme: _iconTheme,
        cardColor: Color(0xff313A49),
        appBarTheme: AppBarTheme(color: baseColorI9XP[900], elevation: 0),
        dialogBackgroundColor: baseColorI9XP[900],
        // snackBarTheme: SnackBarThemeData(
        //   backgroundColor: musk[800],
        //   actionTextColor: accentColor,
        // ),
      );

  Map<int, Color> baseColorI9XP = {
    50: Color.fromRGBO(81, 92, 111, .1),
    100: Color.fromRGBO(81, 92, 111, .2),
    200: Color.fromRGBO(81, 92, 111, .3),
    300: Color.fromRGBO(81, 92, 111, .4),
    400: Color.fromRGBO(81, 92, 111, .5),
    500: Color.fromRGBO(81, 92, 111, .6),
    600: Color.fromRGBO(81, 92, 111, .7),
    700: Color.fromRGBO(81, 92, 111, .8),
    800: Color.fromRGBO(81, 92, 111, .9),
    900: Color.fromRGBO(81, 92, 111, 1),
  };
}
