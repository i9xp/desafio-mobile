import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/category_title.dart';
import 'package:i9xp/app/modules/home/pages/cart/components/cart_item_divider.dart';
import 'package:i9xp/app/modules/home/pages/cart/components/cart_item_widget.dart';
import 'package:i9xp/app/modules/home/pages/cart/components/checkout_section.dart';
import 'cart_controller.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends ModularState<CartPage, CartController> {
  //use 'controller' variable to access controller

  num get pagePadding => 25.h;
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  CartItem(
                    title: "Faux Sued Ankle Boots",
                    price: 49.99,
                    subtitle: "7, Hot Pink",
                    image: "assets/img/home/scarf.png",
                  ),
                  CartItemDivider(),
                  CartItem(
                    title: "Faux Sued Ankle Boots",
                    price: 49.99,
                    subtitle: "7, Hot Pink",
                    image: "assets/img/home/scarf.png",
                  ),
                  CartItemDivider(),
                  CartItem(
                    title: "Faux Sued Ankle Boots",
                    price: 49.99,
                    subtitle: "7, Hot Pink",
                    image: "assets/img/home/scarf.png",
                  ),
                  CartItemDivider(),
                  CartItem(
                    title: "Faux Sued Ankle Boots",
                    price: 49.99,
                    subtitle: "7, Hot Pink",
                    image: "assets/img/home/scarf.png",
                  ),
                  SizedBox(height: 100),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: CheckoutSection(
              amount: 81.57,
              shipping: "Free Domestic Shipping",
              onCheckout: () {},
            ),
          ),
        ],
      ),
    );
  }
}
