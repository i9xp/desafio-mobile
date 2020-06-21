class CategoryModel {
  ///Category img url.
  String img;

  ///Category title
  String title;
  CategoryModel({this.img, this.title});

  ///Constructor from json takes the Firebase response
  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      img: json["img"],
      title: json["title"],
    );
  }

  Map<String, dynamic> toJson(CategoryModel model) {
    Map<String, dynamic> json = Map<String, dynamic>();
    json = {
      "img": model.img,
      "title": model.title,
    };

    return json;
  }
}
