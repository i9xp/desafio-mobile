import 'package:desafioi9xp/src/views/main.view.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path;

void main() async {
  /*final appDocumentDir = await path.getExternalStorageDirectory();
  Hive.init(appDocumentDir.path);
  await Hive.openBox("cart");*/
  runApp(MyAppView());
}
