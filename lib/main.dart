import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src/core/app.module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ModularApp(module: AppModule()));
}
