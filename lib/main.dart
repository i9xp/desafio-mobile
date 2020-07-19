import 'package:desafioi9xp/src/modules/cart/models/cart_item.model.dart';
import 'package:desafioi9xp/src/modules/product/models/product.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path;

import 'src/core/app.module.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  var dir = await path.getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  Hive.registerAdapter(ProductModelAdapter());
  Hive.registerAdapter(CartItemModelAdapter());
  await Hive.openBox<CartItemModel>('cart');
  runApp(ModularApp(module: AppModule()));
}
