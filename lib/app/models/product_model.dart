class ProductModel {
  int id;
  String img;
  String thumbnail;
  String name;
  String category;
  double price;
  double rating;
  String condition;
  String fitting;
  String brand;
  String material;
  String sku;
  ProductModel({
    this.id,
    this.img,
    this.thumbnail,
    this.name,
    this.category,
    this.price,
    this.rating,
    this.condition,
    this.fitting,
    this.brand,
    this.material,
    this.sku,
  });

  factory ProductModel.fromJson(Map json) {
    return ProductModel(
      id: json["id"] ?? null,
      img: json["img"],
      thumbnail: json["thumbnail"] ?? "",
      name: json["name"] ?? "",
      category: json["category"] ?? "",
      price: json["price"] ?? 0,
      rating: json["rating"] ?? 0,
      condition: json["condition"] ?? "",
      fitting: json["fitting"] ?? "",
      brand: json["brand"] ?? "",
      material: json["material"] ?? "",
      sku: json["sku"] ?? "",
    );
  }

  Map<String, dynamic> toJson(ProductModel model) {
    Map<String, dynamic> json = Map<String, dynamic>();
    json = {
      "id": model.id,
      "img": model.img,
      "thumbnail": model.thumbnail,
      "name": model.name,
      "category": model.category,
      "price": model.price,
      "rating": model.rating,
      "condition": model.condition,
      "fitting": model.fitting,
      "brand": model.brand,
      "material": model.material,
      "sku": model.sku,
    };
    return json;
  }

  Map<String, dynamic> toHive() {
    Map<String, dynamic> json = Map<String, dynamic>();
    json = {
      "id": id,
      "img": img,
      "thumbnail": thumbnail,
      "name": name,
      "category": category,
      "price": price,
      "rating": rating,
      "condition": condition,
      "fitting": fitting,
      "brand": brand,
      "material": material,
      "sku": sku,
    };
    return json;
  }
}
