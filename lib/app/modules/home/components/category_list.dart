import 'package:flutter/material.dart';
import 'package:i9xp/app/modules/home/components/category_item.dart';
import 'package:i9xp/app/modules/home/models/category_item_model.dart';

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
