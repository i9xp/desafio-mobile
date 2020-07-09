import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor yellow = AppColors._factoryColor(0xFFFFC600);
  static MaterialColor mustard = AppColors._factoryColor(0xFFF9C705);
  static MaterialColor marine = AppColors._factoryColor(0xFF2E3746);
  static MaterialColor marineDark = AppColors._factoryColor(0xFF2B3340);
  static MaterialColor marineLight = AppColors._factoryColor(0xFF515C6F);
  static MaterialColor ice = AppColors._factoryColor(0xFF2B334000);
  static MaterialColor muted = AppColors._factoryColor(0xFFE7EAF0);
  static MaterialColor white = AppColors._factoryColor(0xffffffff);
  static MaterialColor black = AppColors._factoryColor(0xff000000);  
  static MaterialColor hex(String hex) => AppColors._factoryColor(AppColors._getColorHexFromStr(hex));

  static MaterialColor _factoryColor(int color) {
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

  static int _getColorHexFromStr(String colorStr){
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }
  
}
