import 'package:desafio_mobile/app/shared/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:desafio_mobile/app/modules/home/home_module.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Desafio Mobile',
      theme: buildTheme(context),
      home: HomeModule(),
    );
  }
}
