import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:mobx/mobx.dart';

part 'cart_store.g.dart';

class CartStore = _CartStoreBase with _$CartStore;

abstract class _CartStoreBase with Store {
  @observable
  ObservableList<ProductModel> cart = <ProductModel>[].asObservable();

  @computed
  int get length => cart.length;

  @action
  addProduct(ProductModel p) => cart.add(p);
}
