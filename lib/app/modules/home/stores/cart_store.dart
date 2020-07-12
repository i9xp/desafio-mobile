import 'package:i9xp/app/modules/home/models/cart_item_model.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:mobx/mobx.dart';

part 'cart_store.g.dart';

class CartStore = _CartStoreBase with _$CartStore;

abstract class _CartStoreBase with Store {
  @observable
  ObservableList<CartItemModel> cart = <CartItemModel>[].asObservable();

  @computed
  int get length {
    if (cart.length == 0) return 0;
    return cart.fold(0, (previousValue, p) => previousValue + p.amount);
  }

  @computed
  bool get hasProducts => length > 0;

  @computed
  String get totalAmount {
    if (!hasProducts) return "0.0";
    return cart
        .fold<double>(
          0.0,
          (previousValue, element) =>
              previousValue +
              double.parse(element.product.price) * element.amount,
        )
        .toStringAsFixed(2);
  }

  @action
  addProduct(ProductModel p) {
    final index = contains(p.id);
    if (index == -1) {
      cart.add(CartItemModel(p, amount: 1));
    } else {
      cart[index].amount += 1;
    }
  }

  int contains(String id) => cart.indexWhere((p) => p.product.id == id);

  @action
  clear() => cart = <CartItemModel>[].asObservable();

  @action
  removeProduct(String id) {
    if (hasProducts) {
      final index = contains(id);
      final product = cart[index];
      product.amount -= 1;

      if (product.amount == 0) {
        cart.remove(product);
      }
    }
  }
}
