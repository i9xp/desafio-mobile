import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/app_action_widget.dart';
import 'package:i9xp/app/modules/home/models/action_type.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:i9xp/app/modules/home/stores/cart_store.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
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
  final cartStore = Modular.get<CartStore>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PRODUCT_PAGE_BACKGROUND,
      appBar: AppBar(
        title: Text(widget.productModel.title),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Observer(builder: (_) {
              return AppAction(
                type: ActionType.CART,
                number: cartStore.produtosCarrinho,
              );
            }),
          )
        ],
      ),
      body: Column(
        children: <Widget>[],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            cartStore.setProdutosCarrinho(cartStore.produtosCarrinho + 1),
      ),
    );
  }
}
