import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/commons/title_section.dart';
import 'package:i9xp_commerce/pages/cart/widget/cart_checkout.dart';
import 'package:i9xp_commerce/pages/cart/widget/list.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

import 'controller.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.marineLight,
        body: CustomScrollView(
          slivers: <Widget>[
            SliverPadding(
              padding: EdgeInsets.symmetric(vertical: 25),
              sliver: SliverToBoxAdapter(
                child: TitleSection("Cart"),
              ),
            ),
            CartList(),
          ],
        ),
        bottomNavigationBar: CartCheckout(),
      ),
    );
  }
}
