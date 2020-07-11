import 'package:flutter/material.dart';
import 'package:i9xp/app/modules/home/models/category_image.dart';
import 'package:i9xp/app/modules/home/models/category_item_model.dart';
import 'package:i9xp/app/shared/constants/assets.dart';
import 'package:i9xp/app/shared/constants/styles.dart';

class CategoryList extends StatelessWidget {
  final List<CategoryItemModel> categories;

  const CategoryList({
    Key key,
    @required this.categories,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: categories.map(_modelToWidget).toList(),
    );
  }

  Widget _modelToWidget(CategoryItemModel e) =>
      CategoryItem(image: e.image, title: e.title);
}

class CategoryItem extends StatefulWidget {
  final String title;
  final CategoryImage image;
  const CategoryItem({
    Key key,
    @required this.title,
    @required this.image,
  }) : super(key: key);

  @override
  _CategoryItemState createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  final assets = {
    CategoryImage.APPAREL: AppAssets.APPAREL,
    CategoryImage.BEAUTY: AppAssets.BEAUTY,
    CategoryImage.SHOES: AppAssets.SHOES,
    CategoryImage.SEE_ALL: AppAssets.SEE_ALL
  };

  String get asset => assets[widget.image];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(asset),
        SizedBox(height: 9),
        Text(widget.title, style: AppStyles.CATEGORY_ITEM),
      ],
    );
  }
}
