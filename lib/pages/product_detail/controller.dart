import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:i9xp_commerce/enums/product_details_section.enum.dart';
import 'package:i9xp_commerce/models/product.model.dart';
import 'package:i9xp_commerce/services/api.dart';
import 'package:i9xp_commerce/utils/api_response.dart';

class ProductDetailController extends GetxController {
  final String categoryId = Get.parameters['category_id'];
  final String productId = Get.parameters['product_id'];
  final CarouselController carouselController = CarouselController();

  RxBool loading = RxBool(false);
  setLoading(bool value) => loading.value = value;

  RxBool offline = RxBool(false);
  setOffline(bool value) => offline.value = value;

  RxString selectedDetailSection = RxString(ProductDetailSectionEnum.DETAILS);
  setSelectedDetailtSection(String value) =>
      selectedDetailSection.value = value;

  RxInt selectedImage = RxInt(0);
  setSelectedImage(int value) => this.selectedImage.value = value;

  Rx<ProductModel> product = Rx<ProductModel>();

  ProductDetailController() {
    fetch();
  }

  fetch() async {
    setLoading(true);
    setOffline(false);
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

  bool get showContent {
    return loading.value == false && offline.value == false && product.value != null;
  }

}
