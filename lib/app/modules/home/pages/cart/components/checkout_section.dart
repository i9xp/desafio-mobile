import 'package:flutter/material.dart';
import 'package:i9xp/app/modules/home/components/bottom_button_widget.dart';
import 'package:i9xp/app/modules/home/pages/product/models/bottom_button_type.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'package:i9xp/app/shared/constants/styles.dart';

class CheckoutSection extends StatelessWidget {
  const CheckoutSection({
    Key key,
    @required this.shipping,
    this.amount = 00.00,
    this.onCheckout,
  }) : super(key: key);

  final double amount;
  final String shipping;
  final Function onCheckout;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("TOTAL", style: AppStyles.CART_CHECKOUT_TOTAL),
            SizedBox(height: 5),
            Text(
              "\$$amount",
              style: AppStyles.CART_CHECKOUT_AMOUNT,
            ),
            SizedBox(height: 5),
            Text(
              shipping,
              style: AppStyles.CART_CHECKOUT_SHIPPING,
            ),
          ],
        ),
        BottomButton(
          label: "CHECKOUT",
          color: AppColors.BAGDE_BACKGROUND,
          type: BottomButtonType.CHECKOUT,
          onTap: onCheckout,
        ),
      ],
    );
  }
}
