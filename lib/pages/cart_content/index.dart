import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/commons/stage/index.dart';
import 'package:i9xp_commerce/commons/stage/widgets/data_empty.dart';
import 'package:i9xp_commerce/commons/title_section.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

import 'controller.dart';
import 'widget/cart_checkout.dart';
import 'widget/list.dart';

class CartContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartController>(
      init: CartController(),
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.marineLight,
        body: Obx(
          () => Stage(
            isLoading: controller.loading.value,
            isEmpty: controller.items.value.length == 0,
            empty: DataEmpty(
              description:
                  "Go to Home page and add a new product to your cart.",
            ),
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
        ),
        bottomNavigationBar: Obx(
          () => Visibility(
            visible: controller.showCheckout,
            child: CartCheckout(controller.total),
          ),
        ),
      ),
    );
  }
}
