import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/commons/action_notification.dart';
import 'package:i9xp_commerce/commons/rate.dart';
import 'package:i9xp_commerce/pages/product_detail/widgets/product_images.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';
import 'package:i9xp_commerce/utils/formatters.dart';

import 'controller.dart';
import 'widgets/product_actions.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductDetailController>(
      init: ProductDetailController(),
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.marineLight,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0),
          child: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            leading: IconButton(
              icon: Icon(
                Feather.chevron_left,
                size: 21,
                color: AppColors.yellow,
              ),
              onPressed: () => Get.back(),
            ),
            backgroundColor: AppColors.marineLight,
            centerTitle: true,
            title: Obx(
              () => Text(
                controller.productName,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            actions: <Widget>[
              ActionNotification(Feather.shopping_cart, 5),
            ],
          ),
        ),
        body: SafeArea(
          child: CustomScrollView(
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          Formatters.brl(49.99).symbolOnLeft,
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.4,
                            color: AppColors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 15),
                        Rate(4.9)
                      ],
                    ),
                    SizedBox(height: 20),
                    Obx(
                      () => ProductImages(
                        [
                          "${controller.product?.value?.imageUrl?.value ?? null}?v=1",
                          "${controller.product?.value?.imageUrl?.value ?? null}?v=2",
                          "${controller.product?.value?.imageUrl?.value ?? null}?v=3",
                        ],
                        controller.selectedImage.value ?? 0,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: ProductActions(),
      ),
    );
  }
}
