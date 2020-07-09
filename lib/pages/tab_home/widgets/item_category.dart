import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:i9xp_commerce/models/category.model.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class ItemCategory extends StatelessWidget {
  final CategoryModel category;
  final double width;
  ItemCategory(this.category, this.width);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: width,
            height: width,
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(width),
              image: this.category.imageUrl.value != null
                  ? DecorationImage(
                      image: CachedNetworkImageProvider(
                          this.category.imageUrl.value),
                      fit: BoxFit.cover,
                    )
                  : null,
            ),
            child: Visibility(
              visible: this.category.id.value == null,
              child: Icon(
                Feather.chevron_right,
                size: 36,
                color: AppColors.mustard,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            this.category.name.value,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
              fontSize: 15,
              color: AppColors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
