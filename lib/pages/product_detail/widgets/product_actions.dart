import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/commons/i9xp_button.dart';
import 'package:i9xp_commerce/pages/product_detail/controller.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class ProductActions extends StatelessWidget {
  final ProductDetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.all(15),
      color: AppColors.marine,
      child: Row(
        children: <Widget>[
          Expanded(
            child: I9XPButton(
              controller.shareProduct,
              label: "SHARE THIS",
              icon: Feather.chevron_up,
            ),
          ),
          SizedBox(width: 15),
          Expanded(
            child: I9XPButton(
              controller.addToCart,
              label: "ADD TO CART",
              icon: Feather.chevron_right,
              iconColor: AppColors.yellow,
              iconBackgroundColor: AppColors.white,
              buttonColor: AppColors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
