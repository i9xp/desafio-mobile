import 'package:flutter/material.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'package:i9xp/app/shared/constants/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key key,
    @required this.image,
    @required this.title,
    @required this.subtitle,
    @required this.price,
    this.amount = 1,
    this.onAdd,
    this.onRemove,
  }) : super(key: key);

  final String image; // "assets/img/home/scarf.png";
  final String title; // "Faux Sued Ankle Boots";
  final String subtitle; // "7, Hot Pink";
  final double price; // 49.99;
  final int amount; // 1;
  final Function onAdd;
  final Function onRemove;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: Center(child: Image.asset(image)),
          ),
          SizedBox(width: 20.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppStyles.CART_ITEM_TITLE),
                  Text(subtitle, style: AppStyles.CART_ITEM_SUBTITLE),
                ],
              ),
              Text("\$$price", style: AppStyles.CART_ITEM_PRICE),
              Row(
                children: [
                  AppIconButton(
                    icon: Icons.remove,
                    onTap: onRemove,
                  ),
                  SizedBox(width: 10),
                  Text("$amount", style: AppStyles.CART_ITEM_AMOUNT),
                  SizedBox(width: 10),
                  AppIconButton(
                    icon: Icons.add,
                    onTap: onAdd,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    Key key,
    @required this.icon,
    this.onTap,
  }) : super(key: key);

  final IconData icon;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(100),
      color: AppColors.LIGHT_GREY,
      child: InkWell(
        borderRadius: BorderRadius.circular(100),
        onTap: onTap,
        child: Container(child: Icon(icon, color: AppColors.WHITE)),
      ),
    );
  }
}
