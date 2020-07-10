import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class CartListItemImage extends StatelessWidget {
  final String image;
  CartListItemImage(this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Visibility(
        visible: this.image != null,
        child: CachedNetworkImage(imageUrl: this.image ?? ""),
      ),
    );
  }
}
