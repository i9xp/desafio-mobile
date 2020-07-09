import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/utils/formatters.dart';

import '../controller.dart';
import 'item_category.dart';

class ListCategories extends StatelessWidget {
  final TabHomeController controller = Get.find();
  
  static final int itemsPerPage = 4;
  static final double horizontalMargin = 25;
  static final double separatorMargin = 22;
  static final double cardWidth = Formatters.horizontalScrollItemWidth(
    Get.width,
    horizontalMargin,
    separatorMargin,
    itemsPerPage,
  );

  @override
  Widget build(BuildContext context) {
    return Obx(() => SizedBox(
      height: cardWidth + 30,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: horizontalMargin),
        scrollDirection: Axis.horizontal,
        itemCount: controller.categories.length,
        separatorBuilder: (_, __) => SizedBox(width: separatorMargin),
        itemBuilder: (_, int index) =>
            ItemCategory(controller.categories[index], cardWidth),
      ),
    ));
  }
}
