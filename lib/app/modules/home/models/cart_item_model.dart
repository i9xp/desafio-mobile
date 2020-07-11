import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:mobx/mobx.dart';

part 'cart_item_model.g.dart';

class CartItemModel = _CartItemModelBase with _$CartItemModel;

abstract class _CartItemModelBase with Store {
  @observable
  int amount;

  final ProductModel product;

  _CartItemModelBase(this.product, {this.amount = 0});
}
