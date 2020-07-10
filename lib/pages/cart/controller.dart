import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:i9xp_commerce/database/index.dart';
import 'package:i9xp_commerce/models/order_item.model.dart';
import 'package:sqflite/sqflite.dart';

class CartController extends GetxController {
  RxList<OrderItemModel> items = RxList<OrderItemModel>([]);

  RxBool loading = RxBool(false);
  setLoading(bool value) => loading.value = value;

  double get total {
    return this.items.value.fold<double>(
        0, (previousValue, item) => previousValue + item.subtotal);
  }

  bool get showCheckout {
    return this.loading.value == false && this.items.value.length > 0;
  }

  CartController() {
    listItems();
  }

  listItems() async {
    try {
      setLoading(true);
      Database db = await DBProvider.db.database;
      items.clear();
      items.addAll(await OrderItemModel().listDb(db));
    } catch (error) {
      Get.snackbar(
        "An error happen",
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.all(25),
      );
    } finally {
      setLoading(false);
    }
  }

  incrementQuantity(OrderItemModel item) {
    if (item.quantity.value >= 10) return;
    item.setQuantity(item.quantity.value + 1);
    _updateItem(item);
  }

  decrementQuantity(OrderItemModel item) {
    if (item.quantity.value <= 1) return;
    item.setQuantity(item.quantity.value - 1);
    _updateItem(item);
  }

  _updateItem(OrderItemModel item) async {
    Database db = await DBProvider.db.database;
    await item.updateDb(db);
  }

  removeItem(OrderItemModel item) async {
    Database db = await DBProvider.db.database;
    await item.deleteDb(db);
    items.remove(item);
  }

  placeOrder() async {
    try {
      Database db = await DBProvider.db.database;
      await db.delete("order_item");
      Get.offAndToNamed("/order_placed");
    } catch (error) {
      Get.snackbar(
        "An error happen",
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.all(25),
      );
    }
  }
}
