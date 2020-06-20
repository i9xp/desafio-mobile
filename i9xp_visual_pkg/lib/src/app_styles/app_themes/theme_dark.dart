import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_colors/app_color.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_fonts/app_text_style.dart';

class ThemeDark {
  ThemeData get theme => ThemeData(
      brightness: Brightness.dark,
      primarySwatch: PRIMARY_SWATCH,
      primaryColor: PRIMARY_SWATCH,
      accentColor: ORANGE_2,
      backgroundColor: GREY_3,
      buttonColor: WHITE,
      iconTheme: IconThemeData(
        color: WHITE,
      ),
      accentIconTheme: IconThemeData(color: WHITE),
      textTheme: TextTheme(
          body1: BODY1,
          body2: BODY2,
          title: TITLE,
          button: BUTTON,
          subhead: SUBHEAD,
          display1: DISPLAY1,
          display2: DISPLAY2,
          display3: DISPLAY3,
          display4: DISPLAY4,
          overline: OVERLINE,
          caption: CAPTION));
}