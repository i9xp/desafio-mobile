import 'package:flutter/material.dart';
import 'package:i9xp/app/shared/constants/assets.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'package:i9xp/app/shared/constants/styles.dart';

class Price extends StatelessWidget implements PreferredSize {
  final String price;
  final String score;

  const Price({
    Key key,
    @required this.price,
    @required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("\$$price", style: AppStyles.CATEGORY_ITEM),
        SizedBox(width: 5),
        Container(
          padding: EdgeInsets.symmetric(vertical: 4, horizontal: 6),
          decoration: BoxDecoration(
            color: AppColors.BAGDE_BACKGROUND,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Row(
            children: [
              Image.asset(AppAssets.STAR, width: 10),
              SizedBox(width: 2),
              Text(score, style: AppStyles.PRODUCT_SCORE)
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size(0, 15);
}
