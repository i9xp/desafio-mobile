import 'package:desafioi9xp/src/modules/cart/models/cart_item.model.dart';
import 'package:desafioi9xp/src/modules/cart/repositories/cart.repository.dart';
import 'package:desafioi9xp/src/modules/product/models/product.model.dart';
import 'package:mobx/mobx.dart';

part 'cart.store.g.dart';

class CartStore = _CartStoreBase with _$CartStore;

abstract class _CartStoreBase with Store {
  final CartRepository _cartRepository;

  _CartStoreBase(this._cartRepository);

  @observable
  ObservableList<CartItemModel> cartList;

  @computed
  bool get hasProducts => cartList != null;

  @computed
  String get totalAmount {
    if (!hasProducts) return "0.0";
    return cartList
        .fold<double>(
            0.0, (previousValue, element) => previousValue + double.parse(element.product.price) * element.amount)
        .toStringAsFixed(2);
  }

  @computed
  int get totalQuantity {
    if (!hasProducts) return 0;
    return cartList.fold<int>(0, (previousValue, element) => previousValue + element.amount);
  }

  @action
  getProducts() {
    cartList = ObservableList<CartItemModel>.of(_cartRepository.getCartProducts());
  }

  @action
  insertProduct(ProductModel productModel) async {
    final index = hasProducts ? cartList.indexWhere((element) => element.product.id == productModel.id) : -1;
    if (index == -1) {
      await _cartRepository.insertProduct(productModel);
    } else {
      await _cartRepository.insertProduct(productModel, amount: ++cartList[index].amount);
    }
    getProducts();
  }

  @action
  removeProduct(ProductModel productModel) {
    if (hasProducts) {
      final index = cartList.indexWhere((p) => p.product.id == productModel.id);
      final product = cartList[index];
      _cartRepository.insertProduct(product.product, amount: --product.amount);
      if (product.amount == 0) {
        _cartRepository.removeProduct(index);
      }
      getProducts();
    }
  }

  @action
  removeAll() {
    _cartRepository.removeAllProduct();
    cartList = null;
  }
}
