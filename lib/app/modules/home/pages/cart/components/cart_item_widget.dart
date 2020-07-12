import 'package:cached_network_image/cached_network_image.dart';
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

  final String image;
  final String title;
  final String subtitle;
  final String price;
  final int amount;
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
            child: Center(
              child: Hero(
                tag: image,
                child: CachedNetworkImage(
                  imageUrl: image,
                  imageBuilder: (context, provider) => Image(
                    image: provider,
                  ),
                  errorWidget: (context, url, error) => Container(),
                  width: 85,
                  height: 85,
                ),
              ),
            ),
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
