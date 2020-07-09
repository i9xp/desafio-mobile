import 'package:get/get.dart';

class CategoryModel{

  CategoryModel({int id, String name, String imageUrl}){
    this.setId(id);
    this.setName(name);
    this.setImageUrl(imageUrl);
  }

  RxInt id = RxInt(null);
  setId(int value) => this.id.value = value;

  RxString name = RxString(null);
  setName(String value) => this.name.value = value;

  RxString imageUrl = RxString(null);
  setImageUrl(String value) => this.imageUrl.value = value;

}