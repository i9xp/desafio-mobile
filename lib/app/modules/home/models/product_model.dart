// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

List<ProductModel> productsFromJson(String str) => List<ProductModel>.from(
    json.decode(str).map((x) => ProductModel.fromJson(x)));

String productsToJson(List<ProductModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

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
  });

  final String id;
  final String name;
  final String completeName;
  final String brand;
  final String sku;
  final String condition;
  final String material;
  final String category;
  final String fiting;
  final List<String> images;
  final String description;
  final String price;

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
      };
}
