import 'package:get/state_manager.dart';

class ProductModel {
  ProductModel({
    int id,
    int brandId,
    int categoryId,
    String name,
    double price,
    String imageUrl,
    String sku,
  }) {
    this.setId(id);
    this.setBrandId(brandId);
    this.setCategoryId(categoryId);
    this.setName(name);
    this.setPrice(price);
    this.setImageUrl(imageUrl);
    this.setSku(sku);
  }

  RxInt id = RxInt(null);
  setId(int value) => this.id.value = value;

  RxInt brandId = RxInt(null);
  setBrandId(int value) => this.brandId.value = value;

  RxInt categoryId = RxInt(null);
  setCategoryId(int value) => this.categoryId.value = value;

  RxString name = RxString(null);
  setName(String value) => this.name.value = value;

  RxDouble price = RxDouble(null);
  setPrice(double value) => this.price.value = value;

  RxString imageUrl = RxString(null);
  setImageUrl(String value) => this.imageUrl.value = value;

  RxString sku = RxString(null);
  setSku(String value) => this.sku.value = value;
}
