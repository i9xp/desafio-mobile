import 'package:mobx/mobx.dart';

part 'cart_store.g.dart';

class CartStore = _CartStoreBase with _$CartStore;

abstract class _CartStoreBase with Store {
  @observable
  var produtosCarrinho = 0;

  @action
  void setProdutosCarrinho(int p) => produtosCarrinho = p;
}
