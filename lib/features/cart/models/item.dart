class Item {
  int productId;
  int quantity;
  double price;
  String name;
  String note;
  String previewURL;

  Item(
      {this.productId,
      this.quantity,
      this.price,
      this.name,
      this.note,
      this.previewURL});

  Item.fromJson(Map<String, dynamic> json) {
    productId = json['productId'];
    quantity = json['quantity'];
    price = json['price'];
    name = json['name'];
    note = json['note'];
    previewURL = json['previewURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['productId'] = this.productId;
    data['quantity'] = this.quantity;
    data['price'] = this.price;
    data['name'] = this.name;
    data['note'] = this.note;
    data['previewURL'] = this.previewURL;
    return data;
  }
}
