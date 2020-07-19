import 'package:desafioi9xp/src/modules/product/styles/product.style.dart';
import 'package:desafioi9xp/src/modules/product/widgets/product_rating_star.widget.dart';
import 'package:flutter/material.dart';

class ProductPrice extends StatelessWidget implements PreferredSize {
  final String price;
  final String score;

  const ProductPrice({
    @required this.price,
    @required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "\$$price",
          style: ProductStyle.PRODUCT_TITLE,
        ),
        Container(width: 5),
        ProductRatingStar(score),
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size(0, 1);
}
