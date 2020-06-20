import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData buildTheme(BuildContext context) {
  final textTheme = Theme.of(context).textTheme;
  return ThemeData(
    primaryColor: Color(0xFF2E3746),
    accentColor: Colors.white,
    primaryColorLight: Color(0xFF515C6F),
    primaryColorDark: Color(0xFF2B3340),
    buttonColor: Color(0xFFF9C705),
    textTheme: TextTheme(

        ///Title style
        headline1: TextStyle(
          fontSize: 40,
          color: Colors.white,
          fontFamily: "Neusa",
          fontWeight: FontWeight.w700,
        ),

        ///Category title style
        subtitle1: TextStyle(
          fontSize: 15,
          color: Theme.of(context).accentColor,
          fontFamily: "Neusa",
        ),

        ///Product name style
        bodyText1: TextStyle(
          fontSize: 12,
          color: Theme.of(context).primaryColorLight,
          fontFamily: "Neusa",
          fontWeight: FontWeight.w200,
        ),

        ///Price style
        bodyText2: TextStyle(
          fontSize: 10,
          color: Theme.of(context).primaryColorLight,
          fontFamily: "Neusa",
          fontWeight: FontWeight.w700,
        )),
  );
}
