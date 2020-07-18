import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static final SECTION_TITLE = TextStyle(
    fontSize: 30,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static final CATEGORY_TITLE = TextStyle(
    fontSize: 15,
    color: Colors.white,
  );

  static final PRODUCT_TITLE = TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.w300,
  );

  static final PRODUCT_PRICE = TextStyle(
    fontSize: 10,
    color: AppColors.productPriceColor,
    fontWeight: FontWeight.bold,
  );

  static final CART_NUMBER_BADGE = TextStyle(
    fontSize: 10,
    color: Colors.white,
  );
}
