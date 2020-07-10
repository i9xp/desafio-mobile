import 'package:get/state_manager.dart';
import 'package:i9xp_commerce/core/model/index.dart';

class ProductModel extends Model<ProductModel> {
  @override
  String table() => "products";

  ProductModel({
    int id,
    int categoryId,
    String name,
    double price,
    String imageUrl,
    String sku,
    String skuDescription,
    String brand,
    String condition,
    String material,
    String fitting,
  }) {
    this.setId(id);
    this.setCategoryId(categoryId);
    this.setName(name);
    this.setPrice(price);
    this.setImageUrl(imageUrl);
    this.setSku(sku);
    this.setSkuDescription(skuDescription);
    this.setBrand(brand);
    this.setCondition(condition);
    this.setMaterial(material);
    this.setFitting(fitting);
  }

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

  RxString skuDescription = RxString();
  setSkuDescription(String value) => skuDescription.value = value;

  RxString brand = RxString();
  setBrand(String value) => brand.value = value;

  RxString condition = RxString();
  setCondition(String value) => condition.value = value;

  RxString material = RxString();
  setMaterial(String value) => material.value = value;

  RxString fitting = RxString();
  setFitting(String value) => fitting.value = value;

  @override
  ProductModel parser(Map<String, dynamic> body) {
    return ProductModel(
      id: int.parse(body['id'].toString()),
      categoryId: int.parse(body['category_id'].toString()),
      name: body['name'],
      price: double.parse(body['price'].toString()),
      imageUrl: body['image_url'],
      sku: body['sku'].toString(),
      skuDescription: body['sku_description'].toString(),
      brand: body['brand'].toString(),
      condition: body['condition'].toString(),
      material: body['material'].toString(),
      fitting: body['fitting'].toString(),
    );
  }

  @override
  Map<String, dynamic> serializer() {
    return <String, dynamic>{
      'id': this.id.value,
      'category_id': this.categoryId.value,
      'name': this.name.value,
      'price': this.price.value,
      'image_url': this.imageUrl.value,
      'sku': this.sku.value,
      'sku_description': this.skuDescription.value,
      'brand': this.brand.value,
      'condition': this.condition.value,
      'material': this.material.value,
      'fitting': this.fitting.value,
    };
  }
}
