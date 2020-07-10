import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class ProductImage extends StatelessWidget {

  final String imageUrl;
  ProductImage(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl ?? "",
      placeholder: (_, __) => Align(
        alignment: Alignment.center,
        child: SizedBox(
          width: 16,
          height: 16,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: new AlwaysStoppedAnimation<Color>(AppColors.yellow),
          ),
        ),
      ),
      errorWidget: (_, __, ___) => Align(
        alignment: Alignment.center,
        child: Icon(
          Feather.image,
          size: 16,
          color: AppColors.yellow,
        ),
      ),
    );
  }
}
