import 'package:flutter/material.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'package:i9xp/app/shared/constants/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final double price;

  const ProductCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.price,
  }) : super(key: key);

  String get priceToString => "\$${price.toStringAsFixed(2)}";

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.CARD_BACKGROUND,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 77.w,
              height: 77.w,
              child: Image.asset(image),
            ),
            SizedBox(height: 3),
            Text(title, style: AppStyles.PRODUCT_TITLE),
            SizedBox(height: 3),
            Text(priceToString, style: AppStyles.PRODUCT_PRICE)
          ],
        ),
      ),
    );
  }
}
