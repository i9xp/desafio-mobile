import 'package:flutter/material.dart';

import 'package:desafio_mobile/app/models/product_model.dart';
import 'package:desafio_mobile/app/modules/product/parts/details_part/details_part_widget.dart';
import 'package:desafio_mobile/app/modules/product/parts/img_part/img_part_widget.dart';
import 'package:desafio_mobile/app/shared/components/basic_structure/basic_structure_widget.dart';
import 'package:desafio_mobile/app/shared/components/product_appbar/product_appbar_widget.dart';
import 'package:desafio_mobile/app/shared/components/product_bottombar/product_bottombar_widget.dart';

class ProductPage extends StatefulWidget {
  final ProductModel productModel;
  final PageController pageController;
  final appController;

  const ProductPage({
    Key key,
    @required this.productModel,
    this.pageController,
    this.appController,
  })  : assert(productModel != null),
        super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: ProductBottombarWidget(
          pageController: widget.pageController,
          appController: widget.appController,
          productModel: widget.productModel,
        ),
        appBar: ProductAppbarWidget(
          centerTitle: true,
          elevation: 0,
          titleComponent: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.productModel.name,
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      .copyWith(fontSize: 20),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("R\$ ${widget.productModel.price.toStringAsFixed(2)}",
                        style: Theme.of(context)
                            .textTheme
                            .headline1
                            .copyWith(fontSize: 20)),
                    SizedBox(width: 5),
                    Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 3),
                        decoration: BoxDecoration(
                            color: Theme.of(context).buttonColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Text(
                            "\u2605 ${widget.productModel.rating.toStringAsFixed(1)}",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                .copyWith(fontSize: 15)))
                  ],
                ),
              ]),
        ),
        body: BasicStructureWidget(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                ImgPartWidget(productModel: widget.productModel),
                SizedBox(height: 30),
                DetailsPartWidget(productModel: widget.productModel),
                Container(),
              ],
            )));
  }
}
