import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'product_controller.dart';

class ProductPage extends StatefulWidget {
  final ProductModel productModel;
  const ProductPage({
    Key key,
    @required this.productModel,
  }) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends ModularState<ProductPage, ProductController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productModel.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
