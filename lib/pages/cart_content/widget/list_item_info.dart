import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/models/order_item.model.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';
import 'package:i9xp_commerce/utils/formatters.dart';

import '../controller.dart';
import 'list_item_button.dart';
import 'list_item_quantity.dart';

class CartListItemInfo extends StatelessWidget {
  final CartController controller = Get.find();

  final OrderItemModel orderItem;
  CartListItemInfo(this.orderItem);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: AppColors.white.withOpacity(0.2),
              width: 0.2,
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              this.orderItem.name.value,
              style: TextStyle(
                fontSize: 15,
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              this.orderItem.sku.value,
              style: TextStyle(
                fontSize: 15,
                color: AppColors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 10),
            Obx(
              () => Text(
                Formatters.brl(this.orderItem.subtotal).symbolOnLeft,
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.yellow,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    CartListItemButton(
                      Feather.minus,
                      () => controller.decrementQuantity(this.orderItem),
                    ),
                    Obx(() =>
                        CartListItemQuantity(this.orderItem.quantity.value)),
                    CartListItemButton(
                      Feather.plus,
                      () => controller.incrementQuantity(this.orderItem),
                    ),
                  ],
                ),
                CartListItemButton(
                  Feather.trash_2,
                  () => controller.removeItem(this.orderItem),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
