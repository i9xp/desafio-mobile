import 'package:hive/hive.dart';

part 'product.model.g.dart';

@HiveType(typeId: 0)
class ProductModel {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  String completeName;
  @HiveField(3)
  String brand;
  @HiveField(4)
  String sku;
  @HiveField(5)
  String condition;
  @HiveField(6)
  String material;
  @HiveField(7)
  String category;
  @HiveField(8)
  String fiting;
  @HiveField(9)
  List<String> images;
  @HiveField(10)
  String description;
  @HiveField(11)
  String price;
  @HiveField(12)
  String score;

  ProductModel(
      {this.id,
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
      this.score});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    completeName = json['complete_name'];
    brand = json['brand'];
    sku = json['sku'];
    condition = json['condition'];
    material = json['material'];
    category = json['category'];
    fiting = json['fiting'];
    images = json['images'].cast<String>();
    description = json['description'];
    price = json['price'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['complete_name'] = this.completeName;
    data['brand'] = this.brand;
    data['sku'] = this.sku;
    data['condition'] = this.condition;
    data['material'] = this.material;
    data['category'] = this.category;
    data['fiting'] = this.fiting;
    data['images'] = this.images;
    data['description'] = this.description;
    data['price'] = this.price;
    data['score'] = this.score;
    return data;
  }
}
