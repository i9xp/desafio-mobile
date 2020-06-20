import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_themes/theme_dark.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_themes/theme_light.dart';

class AppTheme {
  ThemeData mode(ThemeMode mode){
    if (mode == ThemeMode.dark) return ThemeDark().theme;
    return ThemeLight().theme;
  }
}