import 'package:get/state_manager.dart';
import 'package:i9xp_commerce/core/model/index.dart';
import 'package:i9xp_commerce/models/category.model.dart';

class ProductModel extends Model<ProductModel> {
  @override
  String table() => "products";

  ProductModel({
    int id,
    int categoryId,
    String name,
    double price,
    double rate,
    String imageUrl,
    String sku,
    String skuDescription,
    String brand,
    String condition,
    String material,
    String fitting,
    CategoryModel category,
  }) {
    this.setId(id);
    this.setCategoryId(categoryId);
    this.setName(name);
    this.setPrice(price);
    this.setRate(rate);
    this.setImageUrl(imageUrl);
    this.setSku(sku);
    this.setSkuDescription(skuDescription);
    this.setBrand(brand);
    this.setCondition(condition);
    this.setMaterial(material);
    this.setFitting(fitting);
    this.setCategory(category);
  }

  RxInt categoryId = RxInt(null);
  setCategoryId(int value) => this.categoryId.value = value;

  RxString name = RxString(null);
  setName(String value) => this.name.value = value;

  RxDouble price = RxDouble(null);
  setPrice(double value) => this.price.value = value;

  RxDouble rate = RxDouble(null);
  setRate(double value) => this.rate.value = value;

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

  Rx<CategoryModel> category = Rx<CategoryModel>();
  setCategory(CategoryModel value) => category.value = value;

  @override
  ProductModel parser(Map<String, dynamic> body) {
    if(body == null) return null;
    return ProductModel(
      id: int.parse(body['id'].toString()),
      categoryId: int.parse(body['category_id'].toString()),
      name: body['name'],
      price: double.parse(body['price'].toString()),
      rate: double.parse(body['rate'].toString()),
      imageUrl: body['image_url'],
      sku: body['sku'].toString(),
      skuDescription: body['sku_description'].toString(),
      brand: body['brand'].toString(),
      condition: body['condition'].toString(),
      material: body['material'].toString(),
      fitting: body['fitting'].toString(),
      category: CategoryModel().parser(body['category'])
    );
  }

  @override
  Map<String, dynamic> serializer() {
    return <String, dynamic>{
      'id': this.id.value ?? null,
      'category_id': this.categoryId.value ?? null,
      'name': this.name.value ?? null,
      'price': this.price.value ?? null,
      'rate': this.rate.value ?? null,
      'image_url': this.imageUrl.value ?? null,
      'sku': this.sku.value ?? null,
      'sku_description': this.skuDescription.value ?? null,
      'brand': this.brand.value ?? null,
      'condition': this.condition.value ?? null,
      'material': this.material.value ?? null,
      'fitting': this.fitting.value ?? null,
      "category": this.category.value?.serializer() ?? null
    };
  }

  Map<String, String> buildAttributes() {
    return {
      "BRAND": this.brand.value ?? "",
      "SKU": this.sku.value ?? "",
      "CONDITION": this.condition.value ?? "",
      "MATERIAL": this.material.value ?? "",
      "CATEGORY": this.category.value?.name?.value ?? "",
      "FITTING": this.fitting.value ?? "",
    };
  }
}
