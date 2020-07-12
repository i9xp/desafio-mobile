import 'package:hive/hive.dart';
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

@HiveType(typeId: 1)
class CartItemHive {
  @HiveField(0)
  @observable
  int amount;

  @HiveField(1)
  final ProductModel product;

  factory CartItemHive.fromBase(CartItemModel c) {
    return CartItemHive(
      c.product,
      amount: c.amount,
    );
  }

  CartItemModel toBase() => CartItemModel(product, amount: amount);

  CartItemHive(this.product, {this.amount = 0});
}
