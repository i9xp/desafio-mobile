import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor yellow = AppColors.factoryColor(0xFFFFC600);
  static MaterialColor mustard = AppColors.factoryColor(0xFFF9C705);
  static MaterialColor marine = AppColors.factoryColor(0xFF2E3746);
  static MaterialColor marineDark = AppColors.factoryColor(0xFF2B3340);
  static MaterialColor marineLight = AppColors.factoryColor(0xFF515C6F);
  static MaterialColor ice = AppColors.factoryColor(0xFF2B334000);
  static MaterialColor muted = AppColors.factoryColor(0xFFE7EAF0);
  static MaterialColor white = AppColors.factoryColor(0xffffffff);
  static MaterialColor black = AppColors.factoryColor(0xff000000);  
  static MaterialColor factoryColor(int color) {
    return MaterialColor(color, <int, Color>{
      50: Color(color),
      100: Color(color),
      200: Color(color),
      300: Color(color),
      400: Color(color),
      500: Color(color),
      600: Color(color),
      700: Color(color),
      800: Color(color),
      900: Color(color),
    });
  }
}
