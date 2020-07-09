import 'package:carousel_slider/carousel_controller.dart';
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

  RxString selectedDetailSection = RxString(ProductDetailSectionEnum.DETAILS);
  setSelectedDetailtSection(String value) => selectedDetailSection.value = value;

  RxInt selectedImage = RxInt(0);
  setSelectedImage(int value) => this.selectedImage.value = value;

  Rx<ProductModel> product = Rx<ProductModel>();

  ProductDetailController() {
    _fetch();
  }

  _fetch() async {
    ApiResponse response = await Api.get("/categories/$categoryId/products/$productId");
    if(response.getStatusMessage().code == 200){
      product.value = ProductModel().parser(response.getContent());
    }
  }

  String get productName {
    return product?.value?.name?.value ?? "Carregando...";
  }

}
