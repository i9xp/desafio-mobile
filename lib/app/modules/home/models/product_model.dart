// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

import 'package:hive/hive.dart';

part 'product_model.g.dart';

List<ProductModel> productsFromJson(String str) => List<ProductModel>.from(
    json.decode(str).map((x) => ProductModel.fromJson(x)));

String productsToJson(List<ProductModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

@HiveType(typeId: 2)
class ProductModel {
  ProductModel({
    this.id,
    this.name,
    this.completeName,
    this.brand,
    this.sku,
    this.condition,
    this.material,
    this.category,
    this.fiting,
    this.images,
    this.description,
    this.price,
    this.score,
  });

  @HiveField(0)
  final String id;
  @HiveField(1)
  final String name;
  @HiveField(2)
  final String completeName;
  @HiveField(3)
  final String brand;
  @HiveField(4)
  final String sku;
  @HiveField(5)
  final String condition;
  @HiveField(6)
  final String material;
  @HiveField(7)
  final String category;
  @HiveField(8)
  final String fiting;
  @HiveField(9)
  final List<String> images;
  @HiveField(10)
  final String description;
  @HiveField(11)
  final String price;
  @HiveField(12)
  final String score;

  ProductModel copyWith({
    String id,
    String name,
    String completeName,
    String brand,
    String sku,
    String condition,
    String material,
    String category,
    String fiting,
    List<String> images,
    String description,
    String price,
    String score,
  }) =>
      ProductModel(
        id: id ?? this.id,
        name: name ?? this.name,
        completeName: completeName ?? this.completeName,
        brand: brand ?? this.brand,
        sku: sku ?? this.sku,
        condition: condition ?? this.condition,
        material: material ?? this.material,
        category: category ?? this.category,
        fiting: fiting ?? this.fiting,
        images: images ?? this.images,
        description: description ?? this.description,
        price: price ?? this.price,
        score: score ?? this.score,
      );

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        name: json["name"],
        completeName: json["complete_name"],
        brand: json["brand"],
        sku: json["sku"],
        condition: json["condition"],
        material: json["material"],
        category: json["category"],
        fiting: json["fiting"],
        images: List<String>.from(json["images"].map((x) => x)),
        description: json["description"],
        price: json["price"],
        score: json["score"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "complete_name": completeName,
        "brand": brand,
        "sku": sku,
        "condition": condition,
        "material": material,
        "category": category,
        "fiting": fiting,
        "images": List<dynamic>.from(images.map((x) => x)),
        "description": description,
        "price": price,
        "score": score,
      };
}
