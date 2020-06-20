import 'package:flutter/material.dart';
import 'package:i9xp_app/app/controllers/app_controller.dart';
import 'package:i9xp_app/app/pages/home/home_page.dart';
import 'package:i9xp_app/app/utils/navigators/app_navigator.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio Mobile',
      themeMode: ThemeMode.light,
      theme: AppTheme().mode(ThemeMode.light),
      darkTheme: AppTheme().mode(ThemeMode.dark),
      home: HomePage(title: 'Desafio Mobile'),
      onGenerateRoute: AppRouter.generateRoute,
      navigatorKey: AppController().navKey,
      debugShowCheckedModeBanner: false,
    );
  }
}