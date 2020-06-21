import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  String name;
  String nick;
  double price;
  String brand;
  String sku;
  String condition;
  String material;
  String category;
  String fitting;
  String icon;
  double stars;
  List<String> images;

  ProductModel(
      {this.name,
      this.nick,
      this.price,
      this.brand,
      this.sku,
      this.condition,
      this.material,
      this.category,
      this.fitting,
      this.stars,
      this.icon,
      this.images});

  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);

  Map<String, dynamic> toJson(ProductModel model) => _$ProductModelToJson(this);
}
