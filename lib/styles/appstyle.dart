import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:flutter/material.dart';

class AppStyle {
  static final SECTION_TITLE = TextStyle(
    fontSize: 30,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontFamily: "Neusa",
  );

  static final CATEGORY_TITLE = TextStyle(
    fontSize: 15,
    color: Colors.white,
    fontFamily: "Neusa",
  );

  static final PRODUCT_TITLE = TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.w300,
    fontFamily: "Neusa",
  );

  static final PRODUCT_PRICE = TextStyle(
    fontSize: 10,
    color: AppColors.productPriceColor,
    fontWeight: FontWeight.bold,
    fontFamily: "Neusa",
  );

  static final BADGE_NUMBER = TextStyle(
    fontSize: 10,
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontFamily: "Neusa",
  );
}
