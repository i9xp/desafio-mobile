import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:teste1/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  runApp(ModularApp(module: AppModule()));
}
