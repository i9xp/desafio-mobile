import 'package:desafio_mobile/app/models/product_model.dart';
import 'package:desafio_mobile/app/shared/components/product_tile/product_tile_widget.dart';
import 'package:flutter/material.dart';

class ProductPartWidget extends StatelessWidget {
  final appController;
  final PageController pageController;

  const ProductPartWidget(
      {Key key, @required this.appController, this.pageController})
      : assert(appController != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 160,
            child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: appController.products.length > 2
                  ? 2
                  : appController.products.length ?? 0,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.1),
              itemBuilder: (context, index) {
                ProductModel product =
                    ProductModel.fromJson(appController.products[index].data);
                return ProductTileWidget(
                  product: product,
                  appController: appController,
                  pageController: pageController,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
