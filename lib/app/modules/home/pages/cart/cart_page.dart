import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/category_title.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:i9xp/app/modules/home/pages/cart/components/cart_item_divider.dart';
import 'package:i9xp/app/modules/home/pages/cart/components/cart_item_widget.dart';
import 'package:i9xp/app/modules/home/pages/cart/components/checkout_section.dart';
import 'package:i9xp/app/modules/home/stores/cart_store.dart';
import 'cart_controller.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends ModularState<CartPage, CartController> {
  //use 'controller' variable to access controller

  final cartStore = Modular.get<CartStore>();

  num get pagePadding => 25.h;

  _onAddProduct(ProductModel p) => cartStore.addProduct(p);

  _onRemoveProduct(String id) => cartStore.removeProduct(id);

  _onCheckout() async {
    Modular.to.pushNamed("/checkout");
    await Future.delayed(Duration(milliseconds: 500));
    cartStore.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return cartStore.hasProducts
            ? Container(
                height: double.infinity,
                child: Stack(
                  children: [
                    SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: pagePadding),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            CategoryTitle(title: "Cart"),
                            SizedBox(height: 30.h),
                            ..._productsWidget(),
                            SizedBox(height: 100),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Observer(builder: (_) {
                        return CheckoutSection(
                          amount: cartStore.totalAmount,
                          shipping: "Free Domestic Shipping",
                          onCheckout: _onCheckout,
                        );
                      }),
                    ),
                  ],
                ),
              )
            : Center(
                child: Text("No products"),
              );
      },
    );
  }

  List<Widget> _productsWidget() {
    return cartStore.cart.fold(<Widget>[], (previousValue, element) {
      return [
        ...previousValue,
        Observer(builder: (_) {
          return CartItem(
            title: element.product.completeName,
            image: element.product.images[0],
            price: element.product.price,
            amount: element.amount,
            subtitle: element.product.category,
            onAdd: () => _onAddProduct(element.product),
            onRemove: () => _onRemoveProduct(element.product.id),
          );
        }),
        CartItemDivider(),
      ];
    });
  }
}
