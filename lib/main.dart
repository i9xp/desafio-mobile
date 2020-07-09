import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'routes.dart';
import 'utils/app_colors.dart';

void main() => initializeDateFormatting('pt_BR', null).then((_) => runApp(I9XPApp()));

class I9XPApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'i9xp Commerce',
      theme: ThemeData(
        primarySwatch: AppColors.marine,
        fontFamily: 'Montserrat',
      ),
      defaultTransition: Transition.rightToLeft,
      initialRoute: '/',
      getPages: routes(),
    );
  }
}
