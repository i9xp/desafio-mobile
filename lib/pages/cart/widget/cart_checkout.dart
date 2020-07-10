import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/commons/i9xp_button.dart';
import 'package:i9xp_commerce/pages/cart/widget/cart_checkout_subtotal.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

import '../controller.dart';

class CartCheckout extends StatelessWidget {
  final CartController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: AppColors.white.withOpacity(0.3),
            width: 0.3,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CartCheckoutSubtotal(),
          SizedBox(width: 50),
          Expanded(
            child: I9XPButton(
              () => {},
              label: "CHECKOUT",
              icon: Feather.chevron_right,
              iconColor: AppColors.yellow,
              iconBackgroundColor: AppColors.white,
              buttonColor: AppColors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
