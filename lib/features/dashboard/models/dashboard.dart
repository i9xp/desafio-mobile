class Dashboard {
  List<Campains> campains;
  List<HighlightsProducts> highlightsProducts;

  Dashboard({this.campains, this.highlightsProducts});

  Dashboard.fromJson(Map<String, dynamic> json) {
    if (json['campains'] != null) {
      campains = new List<Campains>();
      json['campains'].forEach((v) {
        campains.add(new Campains.fromJson(v));
      });
    }
    if (json['highlightsProducts'] != null) {
      highlightsProducts = new List<HighlightsProducts>();
      json['highlightsProducts'].forEach((v) {
        highlightsProducts.add(new HighlightsProducts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.campains != null) {
      data['campains'] = this.campains.map((v) => v.toJson()).toList();
    }
    if (this.highlightsProducts != null) {
      data['highlightsProducts'] =
          this.highlightsProducts.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Campains {
  int campainId;
  String imageURL;
  String destination;

  Campains({this.campainId, this.imageURL, this.destination});

  Campains.fromJson(Map<String, dynamic> json) {
    campainId = json['campainId'];
    imageURL = json['imageURL'];
    destination = json['destination'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['campainId'] = this.campainId;
    data['imageURL'] = this.imageURL;
    data['destination'] = this.destination;
    return data;
  }
}

class HighlightsProducts {
  int productId;
  String name;
  double price;
  String previewURL;

  HighlightsProducts({this.productId, this.name, this.price, this.previewURL});

  HighlightsProducts.fromJson(Map<String, dynamic> json) {
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
