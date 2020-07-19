import 'package:desafioi9xp/src/modules/home/views/home.view.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MyAppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'i9XP E-Commerce',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.dark,
        cardColor: Colors.white,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(color: AppColors.primaryColor),
        ),
      ),
      home: HomeView(),
      initialRoute: "/",
      onGenerateRoute: Modular.generateRoute,
      navigatorKey: Modular.navigatorKey,
    );
  }
}
