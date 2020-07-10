class Product {
  int productId;
  String product;
  int categoryId;
  String category;
  String description;
  double price;
  String brand;
  String sku;
  String condition;
  String material;
  String fitting;
  List<String> images;
  double ratingGeneral;
  List<Reviews> reviews;

  Product(
      {this.productId,
      this.product,
      this.categoryId,
      this.category,
      this.description,
      this.price,
      this.brand,
      this.sku,
      this.condition,
      this.material,
      this.fitting,
      this.images,
      this.ratingGeneral,
      this.reviews});

  Product.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    product = json['product'];
    categoryId = json['categoryId'];
    category = json['category'];
    description = json['description'];
    price = double.parse(json['price'].toString());
    brand = json['brand'];
    sku = json['sku'];
    condition = json['condition'];
    material = json['material'];
    fitting = json['Fitting'];
    images = json['images'].cast<String>();
    ratingGeneral = double.parse(json['ratingGeneral'].toString());
    if (json['reviews'] != null) {
      reviews = new List<Reviews>();
      json['reviews'].forEach((v) {
        reviews.add(new Reviews.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['product'] = this.product;
    data['categoryId'] = this.categoryId;
    data['category'] = this.category;
    data['description'] = this.description;
    data['price'] = this.price;
    data['brand'] = this.brand;
    data['sku'] = this.sku;
    data['condition'] = this.condition;
    data['material'] = this.material;
    data['Fitting'] = this.fitting;
    data['images'] = this.images;
    data['ratingGeneral'] = this.ratingGeneral;
    if (this.reviews != null) {
      data['reviews'] = this.reviews.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Reviews {
  double rating;
  String opinion;

  Reviews({this.rating, this.opinion});

  Reviews.fromJson(Map<String, dynamic> json) {
    rating = double.parse(json['rating'].toString());
    opinion = json['opinion'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rating'] = this.rating;
    data['opinion'] = this.opinion;
    return data;
  }
}
