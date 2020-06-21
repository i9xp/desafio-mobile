import 'dart:async';
import 'package:mobx/mobx.dart';
import 'package:i9xp_services_pkg/src/kits/data_kit.dart';

import '../product/product_model.dart';
part 'cart_item_model.g.dart';

class CartItemModel extends _CartItemModelBase with _$CartItemModel{
  CartItemModel([ProductModel product]){
    this.product = product;
  }
}

abstract class _CartItemModelBase with Store {

  Timer debounce;

  @observable int quantity = 0;
  @action add() {
    quantity++;
    DataKit.debounce(debounce, (){
      // TODO: salvar a quantidade em disco
    });
  } 
  @action remove() {
    quantity == 0 ? quantity = 0 : quantity--;
     DataKit.debounce(debounce, (){
      // TODO: salvar a quantidade em disco
    });
  }
  ProductModel product;

  void dispose(){
    quantity = null;
    debounce?.cancel();
  }
}