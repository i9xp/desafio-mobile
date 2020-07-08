class Category {
  int categoryId;
  String name;
  String imageURL;

  Category({this.categoryId, this.name, this.imageURL});

  Category.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    name = json['name'];
    imageURL = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['name'] = this.name;
    data['image'] = this.imageURL;
    return data;
  }
}
