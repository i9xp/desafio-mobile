import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:i9xp/app/modules/home/models/cart_item_model.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';

class HiveService extends Disposable {
  HiveService() {
    Hive.initFlutter();
    init();
  }

  init() async {
    try {
      await Hive.initFlutter();
      Hive.registerAdapter(ProductModelAdapter());
      Hive.registerAdapter(CartItemHiveAdapter());
      await Hive.openBox("data");
    } catch (e) {
      print(e);
    }
  }

  void saveCart(List<CartItemHive> cart) {
    Hive.box("data").put("cart", cart);
  }

  List<CartItemHive> getCart() {
    final list = Hive.box("data").get("cart") as List;
    return list.map((e) => e as CartItemHive).toList();
  }

  @override
  void dispose() {}
}
