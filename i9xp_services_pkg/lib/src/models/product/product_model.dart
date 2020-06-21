import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  ProductModel(this.sku, this.brand, this.condition, this.material,
      this.category, this.fitting, this.name, this.price, this.rate, this.short, this.image, this.color);

  final String sku;
  final String brand;
  final String condition;
  final String material;
  final String category;
  final String fitting;
  final String name;
  final double price;
  final String rate;
  final String short;
  final String image;
  final String color;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
