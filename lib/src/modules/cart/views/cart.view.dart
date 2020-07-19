import 'package:desafioi9xp/src/core/widgets/appbar.widget.dart';
import 'package:desafioi9xp/src/core/widgets/custombutton.widget.dart';
import 'package:desafioi9xp/src/modules/cart/controllers/cart.controller.dart';
import 'package:desafioi9xp/src/modules/cart/styles/cart.style.dart';
import 'package:desafioi9xp/src/modules/cart/widgets/product_cart_item.widget.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:desafioi9xp/styles/appstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CartView extends StatefulWidget {
  @override
  _CartViewState createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  CartController _cartController = Modular.get<CartController>();

  @override
  void initState() {
    _cartController.cartStore.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          showLogo: false,
          backgroundColor: AppColors.backgroundColor,
        ).getBar(),
        backgroundColor: AppColors.backgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Cart",
                style: AppStyle.SECTION_TITLE,
              ),
            ),
            Divider(height: 30, color: Colors.transparent),
            Expanded(
              child: Observer(
                builder: (context) {
                  final list = _cartController.cartStore.cartList;
                  return ListView.separated(
                    itemCount: list.length,
                    itemBuilder: (_, index) {
                      final item = list[index];
                      return ProductCartItem(
                        item,
                        onAdd: () {
                          _cartController.insertProduct(item.product);
                        },
                        onRemove: () {
                          _cartController.removeProduct(item.product);
                        },
                      );
                    },
                    separatorBuilder: (_, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                        child: Divider(color: Colors.white10),
                      );
                    },
                  );
                },
              ),
            ),
            Divider(color: Colors.white10, height: 1),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "TOTAL",
                        style: CartSyle.TOTAL_TEXT,
                      ),
                      Observer(
                        builder: (_) {
                          final amount = _cartController.cartStore.totalAmount;
                          return Text(
                            "\$$amount",
                            style: CartSyle.TOTAL_PRICE_TEXT,
                          );
                        },
                      ),
                      Text(
                        "Free Domestic Shipping",
                        style: CartSyle.SHIPPING_TEXT,
                      ),
                    ],
                  ),
                  CustomButton(
                    "CHECKOUT",
                    onPressed: () {
                      print("click");
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
