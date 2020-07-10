import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:i9xp_commerce/database/index.dart';
import 'package:i9xp_commerce/enums/product_details_section.enum.dart';
import 'package:i9xp_commerce/models/order_item.model.dart';
import 'package:i9xp_commerce/models/product.model.dart';
import 'package:i9xp_commerce/services/api.dart';
import 'package:i9xp_commerce/utils/api_response.dart';
import 'package:sqflite/sqflite.dart';

class ProductDetailController extends GetxController {
  final String categoryId = Get.parameters['category_id'];
  final String productId = Get.parameters['product_id'];
  final CarouselController carouselController = CarouselController();

  RxBool loading = RxBool(false);
  setLoading(bool value) => loading.value = value;

  RxBool offline = RxBool(false);
  setOffline(bool value) => offline.value = value;

  RxString selectedDetailSection = RxString(ProductDetailSectionEnum.DETAILS);
  setSelectedDetailtSection(String value) => selectedDetailSection.value = value;

  RxInt selectedImage = RxInt(0);
  setSelectedImage(int value) => this.selectedImage.value = value;
  
  RxInt cartItemsQuantity = RxInt(0);
  setCartItemsQuantity(int value) => cartItemsQuantity.value = value;

  Rx<ProductModel> product = Rx<ProductModel>();

  bool get showContent {
    return loading.value == false && offline.value == false && product.value != null;
  }

  ProductDetailController() {
    fetch();
  }

  fetch() async {
    setLoading(true);
    setOffline(false);
    countCartItems();
    ApiResponse response = await Api.get("/categories/$categoryId/products/$productId");
    try {
      if (response.getStatusMessage().code == 200) {
        product.value = ProductModel().parser(response.getContent());
      }else if(response.isOffline()){
        setOffline(true);
      }else{
        throw response.getStatusMessage().message;
      }
    } catch (error) {
      Get.snackbar(
        "An error happen",
        error.toString(),
        snackPosition: SnackPosition.BOTTOM,
        margin: EdgeInsets.all(25),
      );
    } finally {
      setLoading(false);
    }
  }

  countCartItems() async {
    Database db = await DBProvider.db.database;
    List<Map<String,dynamic>> response = await db.rawQuery("SELECT COUNT(*) AS total FROM order_item");
    if(response.length > 0 && response[0].containsKey("total")){
      setCartItemsQuantity(int.parse(response[0]["total"].toString()));
    }
  }

  addToCart() async {
    Database db = await DBProvider.db.database;
    OrderItemModel orderItem = OrderItemModel(
      productId: this.product.value.id.value,
      quantity: 1,
      price: this.product.value.price.value,
      name: this.product.value.name.value,
      sku: this.product.value.skuDescription.value,
      imageUrl: this.product.value.imageUrl.value,
    );
    OrderItemModel existentOrderItem = await orderItem.findDb(db, args: { "product_id": this.product.value.id.value});
    if(existentOrderItem == null){
      await orderItem.createDb(db);
    }else{
      existentOrderItem.setQuantity(existentOrderItem.quantity.value + 1);
      await existentOrderItem.updateDb(db);
    }
    Get.offAllNamed("/");
  }

  

}
