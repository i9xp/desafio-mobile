import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:i9xp_app/app/shared/controllers/app_controller.dart';
import 'package:i9xp_app/app/utils/navigators/app_navigator.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';

class CartView extends StatelessWidget {

  const CartView();

  @override
  Widget build(BuildContext context) {

    if (app.model.cartList.isEmpty) return NotImplemented('Nenhuma novidade por aqui :(');
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(left: PADDING, top: PADDING),
            child: Text(
              'Cart',
              style: Theme.of(context).textTheme.title,
              textAlign: TextAlign.left,
            ),
          ),
          Expanded(
                child: ListView.separated(
                  separatorBuilder: (_, i) => Divider(color: GREY_2, thickness: 1, height: 1,),
                  itemCount: app.model.cartList.length,
                  itemBuilder: (_, index) => ProductCartItem(model: app.model.cartList.reversed.toList()[index]))
            ),
          Divider(height: 1, thickness: 1, color: GREY_2,),
          Observer(builder: (_) => CartBottomBar(app.model?.cartPriceTotal?.toStringAsFixed(2)?.toString() ?? '0', (){
            app.model.reset();
            app.model.setTabViewIndex(0);
            app.nav.pushNamed(AppRoutes.success);
          }))
        ],
      ),
    );
  }
}