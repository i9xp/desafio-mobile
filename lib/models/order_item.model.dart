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
    DateTime createdAt,
    DateTime updatedAt,
  }) {
    this.setId(id);
    this.setProductId(productId);
    this.setQuantity(quantity);
    this.setPrice(price);
    this.setName(name);
    this.setSku(sku);
    this.setImageUrl(imageUrl);
    this.setCreatedAt(createdAt);
    this.setUpdatedAt(updatedAt);
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
  
  Rx<DateTime> createdAt = Rx<DateTime>(null);
  setCreatedAt(DateTime createdAt) => this.createdAt.value = createdAt;

  Rx<DateTime> updatedAt = Rx<DateTime>(null);
  setUpdatedAt(DateTime updatedAt) => this.updatedAt.value = updatedAt;

  double get subtotal {
    return this.price.value * this.quantity.value;
  }

  @override
  OrderItemModel parser(Map<String, dynamic> body) {
    if(body == null) return null;
    return OrderItemModel(
      id: body.containsKey("id") ? int.parse(body['id'].toString()) : null,
      productId: body.containsKey("product_id") ? int.parse(body['product_id'].toString()) : null,
      quantity: body.containsKey("quantity") ? int.parse(body['quantity'].toString()) : null,
      price: body.containsKey("price") ? double.parse(body['price'].toString()) : null,
      name: body.containsKey("name") ? body['name'] : null,
      sku: body.containsKey("sku") ? body['sku'] : null,
      imageUrl: body.containsKey("image_url") ? body['image_url'] : null,
      createdAt: body.containsKey("created_at") ? DateTime.parse(body["created_at"] as String) : null,
      updatedAt: body.containsKey("updated_at") ? DateTime.parse(body["updated_at"] as String) : null,
    );
  }

  @override
  Map<String, dynamic> serializer() {
    return <String, dynamic>{
      'id': id.value ?? null,
      'product_id': productId.value ?? null,
      'quantity': quantity.value ?? null,
      'price': price.value ?? null,
      'name': name.value ?? null,
      'sku': sku.value ?? null,
      'image_url': imageUrl.value ?? null,
      "created_at": createdAt.value ?? null,
      "updated_at": updatedAt.value ?? null,
    };
  }

}
