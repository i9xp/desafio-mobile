import 'package:desafioi9xp/src/modules/cart/models/cart_item.model.dart';
import 'package:desafioi9xp/src/modules/product/models/product.model.dart';

abstract class ILocalStorage {
  List<CartItemModel> getCart();
  void insertItem(ProductModel product);
}
