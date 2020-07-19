import 'package:flutter/material.dart';

class ProductController {
  ProductController();

  TabController productInfoTabController;
  PageController productImagesPageController = PageController(viewportFraction: 0.8);

  void onTabChanged(int index) {
    productInfoTabController.animateTo(index);
  }
}
