import 'package:get/get.dart';
import 'package:i9xp_commerce/core/model/index.dart';

class CategoryModel extends Model<CategoryModel> {
  @override
  String table() => "categories";

  CategoryModel({
    int id,
    String name,
    String imageUrl,
    DateTime createdAt,
  }) {
    this.setId(id);
    this.setName(name);
    this.setImageUrl(imageUrl);
    this.setCreatedAt(createdAt);
  }

  RxString name = RxString(null);
  setName(String value) => this.name.value = value;

  RxString imageUrl = RxString(null);
  setImageUrl(String value) => this.imageUrl.value = value;

  Rx<DateTime> createdAt = Rx<DateTime>(null);
  setCreatedAt(DateTime value) => this.createdAt.value = value;

  @override
  CategoryModel parser(Map<String, dynamic> body) {
    return CategoryModel(
      id: int.parse(body['id'].toString()),
      name: body['name'],
      imageUrl: body['image_url'],
      createdAt: DateTime.parse(body["created_at"] as String),
    );
  }

  @override
  Map<String, dynamic> serializer() {
    return <String, dynamic>{
      "id": this.id.value,
      "name": this.name.value,
      "image_url": this.imageUrl.value,
      "createtd_at": this.createdAt.value,
    };
  }
}
