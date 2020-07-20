// import 'package:flutter/material.dart';
// import 'package:flutter_modular/flutter_modular.dart';
// import 'products_controller.dart';

// class ProductsPage extends StatefulWidget {
//   final String title;
//   const ProductsPage({Key key, this.title = "Products"}) : super(key: key);

//   @override
//   _ProductsPageState createState() => _ProductsPageState();
// }

// class _ProductsPageState
//     extends ModularState<ProductsPage, ProductsController> {
//   //use 'controller' variable to access controller

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Column(
//         children: <Widget>[],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:teste1/app/modules/products/products_controller.dart';
import 'package:teste1/app/modules/shared/product_model.dart';
import 'package:teste1/app/src/product_list_widget.dart';

class ProductsPage extends StatefulWidget {
  final String category;

  const ProductsPage({
    Key key,
    this.category,
  }) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState
    extends ModularState<ProductsPage, ProductsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    String actualCategory;

    if (widget.category == 'sapato') {
      actualCategory = 'Sapatos';
    }
    if (widget.category == 'roupa') {
      actualCategory = 'Roupas';
    }
    if (widget.category == 'esporte') {
      actualCategory = 'Esportes';
    }
    return Scaffold(
      body: Observer(
        builder: (_) {
          if (controller.productsList.hasError) {
            print(controller.productsList.error);
            return Center(
              child: RaisedButton(
                onPressed: () {
                  controller.getList();
                },
                child: Text('error'),
              ),
            );
          }

          if (controller.productsList.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          List<ProductModel> list = controller.productsList.data;
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.black,
                stretch: true,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    actualCategory,
                  ),
                ),
              ),
              ProductListWidget(
                category: widget.category,
                products: list,
              ),
            ],
          );
        },
      ),
    );
  }
}
