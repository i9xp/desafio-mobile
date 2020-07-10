import 'package:flutter/material.dart';
import 'package:i9xp_commerce/models/category.model.dart';
import 'package:i9xp_commerce/pages/tab_home/widgets/item_category.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ItemCategoryPlaceholder extends StatelessWidget{

  final double width;
  ItemCategoryPlaceholder(this.width);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.marineLight.withOpacity(0.2),
      highlightColor: AppColors.marineLight,
      enabled: true,
      child: ItemCategory(CategoryModel(name: "Loading..."), width)
    );
  }
  
}