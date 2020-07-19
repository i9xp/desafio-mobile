import 'package:desafioi9xp/src/modules/cart/stores/cart.store.dart';
import 'package:desafioi9xp/src/modules/product/models/product.model.dart';

class CartController {
  CartStore cartStore;

  CartController(this.cartStore);

  insertProduct(ProductModel productModel) {
    cartStore.insertProduct(productModel);
  }

  removeProduct(ProductModel productModel) {
    cartStore.removeProduct(productModel);
  }

  removeAll() {
    cartStore.removeAll();
  }
}
