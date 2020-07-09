import 'package:get/get.dart';

class CategoryModel{
  
  RxInt id = RxInt(null);
  setId(int value) => this.id.value = value;

  RxString name = RxString(null);
  setName(String value) => this.name.value = value;

  RxString imageUrl = RxString(null);
  setImageUrl(String value) => this.imageUrl.value = value;

}