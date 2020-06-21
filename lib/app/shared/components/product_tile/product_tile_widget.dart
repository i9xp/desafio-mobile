import 'package:desafio_mobile/app/models/product_model.dart';
import 'package:desafio_mobile/app/modules/product/product_module.dart';
import 'package:flutter/material.dart';

class ProductTileWidget extends StatelessWidget {
  final ProductModel product;
  final appController;
  final PageController pageController;

  const ProductTileWidget(
      {Key key,
      @required this.product,
      @required this.appController,
      this.pageController})
      : assert(product != null),
        assert(appController != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductModule(
                      productModel: product,
                      pageController: pageController,
                      appController: appController,
                    )));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                  child:
                      Image.network(product.thumbnail, height: 69, width: 75)),
              SizedBox(
                height: 15,
              ),
              Text(product.name, style: Theme.of(context).textTheme.bodyText1),
              Text(
                "R\$ ${product.price.toStringAsFixed(2)}",
                style: Theme.of(context).textTheme.bodyText2,
              )
            ]),
      ),
    );
  }
}
