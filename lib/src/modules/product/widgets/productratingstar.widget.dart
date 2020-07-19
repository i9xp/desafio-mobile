import 'package:desafioi9xp/src/modules/product/styles/product.style.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:flutter/material.dart';

class ProductRatingStar extends StatelessWidget {
  String value;

  ProductRatingStar(this.value);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 2.0),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            color: Colors.white,
            size: 12,
          ),
          Text(
            value,
            style: ProductStyle.PRODUCT_RATING_STAR,
          ),
        ],
      ),
    );
  }
}
