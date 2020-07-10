class Product {
  int productId;
  String name;
  double price;
  String previewURL;

  Product({this.productId, this.name, this.price, this.previewURL});

  Product.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    name = json['name'];
    price = double.parse(json['price'].toString());
    previewURL = json['previewURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['name'] = this.name;
    data['price'] = this.price;
    data['previewURL'] = this.previewURL;
    return data;
  }
}
