import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/shared/constants/colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: Modular.navigatorKey,
      title: 'i9xp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: AppColors.HOME_BACKGROUND_A,
          canvasColor: AppColors.TABBAR_COLOR),
      initialRoute: '/',
      onGenerateRoute: Modular.generateRoute,
    );
  }
}
