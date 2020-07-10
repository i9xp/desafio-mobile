import 'package:flutter/material.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class CartListItemQuantity extends StatelessWidget {
  final int quantity;
  CartListItemQuantity(this.quantity);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 13),
      child: Text(
        this.quantity.toString(),
        style: TextStyle(
          fontSize: 15,
          color: AppColors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
