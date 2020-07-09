import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class Rate extends StatelessWidget {

  final double rate;
  Rate(this.rate);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 3),
      decoration: BoxDecoration(
        color: AppColors.yellow,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            FontAwesome.star,
            size: 12,
            color: AppColors.white,
          ),
          SizedBox(width: 3),
          Text(
            rate.toString(),
            style: TextStyle(
              height: 1.4,
              fontSize: 12,
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
