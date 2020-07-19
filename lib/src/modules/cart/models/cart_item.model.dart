import 'package:desafioi9xp/src/modules/product/models/product.model.dart';
import 'package:hive/hive.dart';

part 'cart_item.model.g.dart';

@HiveType(typeId: 1)
class CartItemModel {
  @HiveField(0)
  int amount;

  @HiveField(1)
  final ProductModel product;

  factory CartItemModel.fromBase(CartItemModel c) {
    return CartItemModel(
      c.product,
      amount: c.amount,
    );
  }

  CartItemModel toBase() => CartItemModel(product, amount: amount);

  CartItemModel(this.product, {this.amount = 0});
}
