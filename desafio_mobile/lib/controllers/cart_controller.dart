import 'package:desafio_mobile/models/cart_item_model.dart';
import 'package:desafio_mobile/models/product_model.dart';
import 'package:mobx/mobx.dart';

part 'cart_controller.g.dart';

class CartController = _CartBase with _$CartController;

abstract class _CartBase with Store {
  @observable
  ObservableList<CartItemModel> itens = ObservableList.of([]);

  @observable
  double total = 0.00;

  @action
  void addItem(ProductModel item){
    CartItemModel cartItem = CartItemModel();
    cartItem.img = item.icon;
    cartItem.title = item.name;
    cartItem.subTitle = item.material;
    cartItem.price = item.price;
    cartItem.qtd = 1;
    itens.add(cartItem);
    addTotal(cartItem.price);
  }

  @action
  void addTotal(double price){
    total += price;
  }

  @action
  void resetValues(){
    itens = <CartItemModel>[].asObservable();
    total = 0.00;
  }

}