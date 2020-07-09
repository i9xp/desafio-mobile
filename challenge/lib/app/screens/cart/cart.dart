import 'package:challenge/app/screens/cart/widgets/appBar.dart';
import 'package:challenge/app/screens/cart/widgets/customCart.dart';
import 'package:challenge/app/screens/cart/widgets/priceCart.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff515C6F),
      body: Stack(
        children: <Widget>[
          Positioned(top: 25, right: 20, child: AppBarCustomCart()),
          Positioned(
            child: CustomCartList(),
          ),
          Positioned(
            bottom: 60,
            left: 31,
            child: PriceCart(),
          )
        ],
      ),
    );
  }
}
