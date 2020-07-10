import 'package:get/state_manager.dart';
import 'package:i9xp_commerce/core/model/index.dart';

class ProductModel extends Model<ProductModel> {
  
  @override
  String table() =>  "products";

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

  @override
  ProductModel parser(Map<String, dynamic> body) {
    return ProductModel(
      id: int.parse(body['id'].toString()),
      //brandId: int.parse(body['brand_id'].toString()),
      categoryId: int.parse(body['category_id'].toString()),
      name: body['name'],
      price: double.parse(body['price'].toString()),
      imageUrl: body['image_url'],
      sku: body['sku'].toString(),
    );
  }

  @override
  Map<String, dynamic> serializer() {
    return <String, dynamic>{
      'id': this.id.value,
      'brand_id': this.brandId.value,
      'category_id': this.categoryId.value,
      'name': this.name.value,
      'price': this.price.value,
      'image_url': this.imageUrl.value,
      'sku': this.sku.value,
    };
  }

}
