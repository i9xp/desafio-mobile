import 'package:desafio_mobile/app/models/category_model.dart';
import 'package:desafio_mobile/app/shared/components/category_tile/category_tile_widget.dart';
import 'package:flutter/material.dart';

class CategoryPartWidget extends StatelessWidget {
  final appController;

  const CategoryPartWidget({Key key, @required this.appController})
      : assert(appController != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("Categories", style: Theme.of(context).textTheme.headline1),
              SizedBox(height: 10),
              SizedBox(
                height: 100,
                child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: appController.categories.length + 1,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 10,
                        childAspectRatio: 1.1),
                    itemBuilder: (context, index) {
                      if (index < appController.categories.length) {
                        CategoryModel category = CategoryModel.fromJson(
                            appController.categories[index].data);
                        return CategoryTileWidget(category: category);
                      } else if (index > 1) {
                        return CategoryTileWidget();
                      } else {
                        return Container();
                      }
                    }),
              )
            ]));
  }
}
