
import 'package:i9xp_commerce/core/enum/index.dart';

class ProductDetailSectionEnum extends Enum {

  static const String PRODUCT = "product";
  static const String DETAILS = "details";
  static const String REVIEWS = "reviews";

  ProductDetailSectionEnum() : super({
    PRODUCT: "Product",
    DETAILS: "Details",
    REVIEWS: "Reviews",
  });  
}