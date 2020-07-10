import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:i9xp_commerce/pages/cart/widget/list_item_button.dart';
import 'package:i9xp_commerce/pages/cart/widget/list_item_quantity.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';
import 'package:i9xp_commerce/utils/formatters.dart';

class CartListItemInfo extends StatelessWidget {
  final double subtotal;
  CartListItemInfo(this.subtotal);

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
              "Faux Sued Ankle Boots",
              style: TextStyle(
                fontSize: 15,
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "7, Hot Pink",
              style: TextStyle(
                fontSize: 15,
                color: AppColors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(height: 10),
            Text(
              Formatters.brl(this.subtotal).symbolOnLeft,
              style: TextStyle(
                fontSize: 15,
                color: AppColors.yellow,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CartListItemButton(Feather.minus, () => {}),
                CartListItemQuantity(1),
                CartListItemButton(Feather.plus, () => {})
              ],
            )
          ],
        ),
      ),
    );
  }
}
