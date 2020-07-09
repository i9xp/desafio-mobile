import 'package:flutter/material.dart';
import 'package:i9xp/app/modules/home/components/category_item.dart';
import 'package:i9xp/app/modules/home/models/category_image.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CategoryItem(
          title: "Apparel",
          image: CategoryImage.APPAREL,
        ),
        CategoryItem(
          title: "Beauty",
          image: CategoryImage.BEAUTY,
        ),
        CategoryItem(
          title: "Shoes",
          image: CategoryImage.SHOES,
        ),
        CategoryItem(
          title: "See all",
          image: CategoryImage.SEE_ALL,
        ),
      ],
    );
  }
}
