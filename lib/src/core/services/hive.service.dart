import 'package:desafioi9xp/src/core/interfaces/localstorage.interface.dart';
import 'package:desafioi9xp/src/modules/cart/models/cart_item.model.dart';
import 'package:desafioi9xp/src/modules/product/models/product.model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';

class HiveService extends Disposable implements ILocalStorage {
  Box box;
  String boxName;

  HiveService(this.boxName) {
    box = Hive.box<CartItemModel>(boxName);
  }

  List<CartItemModel> getCart() {
    final list = box.values.toList();
    if (list == null) return null;
    return list.map((e) => e as CartItemModel).toList();
  }

  void insertItem(ProductModel product, {int amount = 1}) {
    box.put(product.id, CartItemModel(product, amount: amount));
  }

  void removeItem(int product) {
    box.deleteAt(product);
  }

  void removeAll() {
    box.deleteFromDisk();
  }

  @override
  void dispose() {}
}
