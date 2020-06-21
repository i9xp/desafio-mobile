import 'package:json_annotation/json_annotation.dart';

part 'cart_item_model.g.dart';

@JsonSerializable()
class CartItemModel {
  String img;
  String title;
  String subTitle;
  double price;
  int qtd;

  CartItemModel({
    this.img,
    this.title,
    this.subTitle,
    this.price,
    this.qtd
  });

  factory CartItemModel.fromJson(Map<String, dynamic> json) => _$CartItemModelFromJson(json);

  Map<String, dynamic> toJson(CartItemModel model) => _$CartItemModelToJson(this);
}