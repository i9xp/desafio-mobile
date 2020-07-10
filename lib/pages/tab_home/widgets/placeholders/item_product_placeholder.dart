import 'package:flutter/material.dart';
import 'package:i9xp_commerce/models/product.model.dart';
import 'package:i9xp_commerce/pages/tab_home/widgets/item_product.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ItemProductPlaceholder extends StatelessWidget{

  final double width;
  final double height;
  ItemProductPlaceholder(this.width, this.height);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.marineLight.withOpacity(0.2),
      highlightColor: AppColors.marineLight,
      enabled: true,
      child: ItemProduct(ProductModel(), width, height)
    );
  }
  
}