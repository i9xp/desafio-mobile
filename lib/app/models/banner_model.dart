class BannerModel {
  ///Image Banner
  String img;

  ///Route tha call other page
  String route;
  BannerModel({this.img, this.route});

  //Constructor from json takes the Firebase response
  factory BannerModel.fromJson(Map<String, dynamic> json) {
    return BannerModel(img: json["img"], route: json["route"]);
  }

  Map<String, dynamic> toJson(BannerModel model) {
    Map<String, dynamic> json = Map<String, dynamic>();
    json = {
      "img": model.img,
      "route": model.route,
    };
    return json;
  }
}
