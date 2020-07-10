import 'package:get/state_manager.dart';
import 'package:i9xp_commerce/core/model/index.dart';

class OrderItemModel extends Model<OrderItemModel> {
  @override
  String table() => "order_item";

  OrderItemModel({
    int id,
    int productId,
    int quantity,
    double price,
    String name,
    String sku,
    String imageUrl,
  }) {
    this.setId(id);
    this.setProductId(productId);
    this.setQuantity(quantity);
    this.setPrice(price);
    this.setName(name);
    this.setSku(sku);
    this.setImageUrl(imageUrl);
  }

  @override
  OrderItemModel parser(Map<String, dynamic> body) {
    return OrderItemModel(
      id: int.parse(body['id'].toString()),
      productId: int.parse(body['product_id'].toString()),
      quantity: int.parse(body['quantity'].toString()),
      price: double.parse(body['price'].toString()),
      name: body['name'],
      sku: body['sku'],
      imageUrl: body['image_url'],
    );
  }

  @override
  Map<String, dynamic> serializer() {
    return <String, dynamic>{
      'id': id.value,
      'product_id': productId.value,
      'quantity': quantity.value,
      'price': price.value,
      'name': name.value,
      'sku': sku.value,
      'image_url': imageUrl.value,
    };
  }

  RxInt productId = RxInt(null);
  setProductId(int value) => productId.value = value;

  RxInt quantity = RxInt(0);
  setQuantity(int value) => quantity.value = value;

  RxDouble price = RxDouble(null);
  setPrice(double value) => price.value = value;

  RxString name = RxString(null);
  setName(String value) => name.value = value;

  RxString sku = RxString(null);
  setSku(String value) => sku.value = value;

  RxString imageUrl = RxString(null);
  setImageUrl(String value) => imageUrl.value = value;
}
