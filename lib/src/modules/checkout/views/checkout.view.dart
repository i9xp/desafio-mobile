import 'package:desafioi9xp/src/core/widgets/appbar.widget.dart';
import 'package:desafioi9xp/src/core/widgets/custombutton.widget.dart';
import 'package:desafioi9xp/src/modules/cart/controllers/cart.controller.dart';
import 'package:desafioi9xp/src/modules/checkout/styles/checkout.style.dart';
import 'package:desafioi9xp/src/modules/home/controllers/home.controller.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CheckoutView extends StatelessWidget {
  CartController _cartController = Modular.get<CartController>();
  HomeController _homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        backgroundColor: AppColors.backgroundColor,
        showLogo: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.close,
              color: AppColors.primaryColor,
            ),
            onPressed: () {
              Modular.to.pop();
              _cartController.removeAll();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 65.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
              child: Image.asset("assets/images/checkout.png"),
            ),
            Divider(height: 30, color: Colors.transparent),
            Text("Order Placed!", style: CheckoutStyle.TITLE),
            Divider(height: 10, color: Colors.transparent),
            Text(
              "Your order was placed successfully. Form more details, check All My Orders page under Profile tab.",
              style: CheckoutStyle.DESCRIPTION,
              textAlign: TextAlign.center,
            ),
            Divider(height: 50, color: Colors.transparent),
            SizedBox(
              width: 170,
              child: CustomButton(
                "MY ORDERS",
                onPressed: () {
                  _homeController.onItemTapped(0);
                  _cartController.removeAll();
                  Modular.to.pop();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
