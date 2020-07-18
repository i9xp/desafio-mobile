import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'src/core/app.module.dart';

void main() async {
  /*final appDocumentDir = await path.getExternalStorageDirectory();
  Hive.init(appDocumentDir.path);
  await Hive.openBox("cart");*/
  runApp(ModularApp(module: AppModule()));
}
