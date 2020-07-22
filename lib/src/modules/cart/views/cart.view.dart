import 'package:desafioi9xp/src/core/widgets/appbar.widget.dart';
import 'package:desafioi9xp/src/core/widgets/custombadge.widget.dart';
import 'package:desafioi9xp/src/core/widgets/custombutton.widget.dart';
import 'package:desafioi9xp/src/modules/cart/controllers/cart.controller.dart';
import 'package:desafioi9xp/src/modules/cart/styles/cart.style.dart';
import 'package:desafioi9xp/src/modules/cart/widgets/product_cart_item.widget.dart';
import 'package:desafioi9xp/src/modules/home/controllers/home.controller.dart';
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
  HomeController _homeController = Modular.get<HomeController>();

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
          actions: [
            CustomBadge(
              count: 5,
              icon: Icon(
                Icons.message,
                color: Colors.white,
              ),
            ),
            CustomBadge(
              count: 9,
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
            ),
          ],
        ),
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
                  return list == null || list.length == 0
                      ? _emptyCart()
                      : ListView.separated(
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
            Observer(
              builder: (_) {
                final amount = _cartController.cartStore.totalAmount;
                return amount == "0.00"
                    ? Center()
                    : Padding(
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
                                Text(
                                  "\$$amount",
                                  style: CartSyle.TOTAL_PRICE_TEXT,
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
                                Modular.to.pushNamed("/checkout");
                              },
                            ),
                          ],
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _emptyCart() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          minRadius: 50,
          maxRadius: 50,
          backgroundColor: Colors.white,
          child: Icon(
            Icons.close,
            size: 50,
            color: AppColors.primaryColor,
          ),
        ),
        Divider(height: 30, color: Colors.transparent),
        Text("Empty!", style: CartSyle.EMPTY_STATE_TITLE),
        Divider(height: 10, color: Colors.transparent),
        Text(
          "Your cart is empty.\nCheck our offers on Home tab.",
          style: CartSyle.EMPTY_STATE_DESCRIPTION,
          textAlign: TextAlign.center,
        ),
        Divider(height: 50, color: Colors.transparent),
        SizedBox(
          width: 180,
          child: CustomButton(
            "GO SHOPPING",
            onPressed: () {
              _homeController.onItemTapped(0);
            },
          ),
        ),
      ],
    );
  }
}
