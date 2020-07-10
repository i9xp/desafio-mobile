import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/commons/stage/index.dart';
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
        body: Stage(
          isLoading: controller.loading.value,
          
          content: CustomScrollView(
            slivers: <Widget>[
              SliverPadding(
                padding: EdgeInsets.symmetric(vertical: 25),
                sliver: SliverToBoxAdapter(
                  child: TitleSection("Cart"),
                ),
              ),
              Obx(() => CartList(controller.items.value)),
            ],
          ),
        ),
        bottomNavigationBar: Obx(() => CartCheckout(controller.total)),
      ),
    );
  }
}
