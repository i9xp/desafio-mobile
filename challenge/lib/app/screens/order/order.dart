import 'package:challenge/app/shared/buttonRoundedCustom.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff515C6F),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/img/icon_order.png',
              width: 101,
              height: 101,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Order Placed!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Your order was placed successfully. \n For more details, check All My Orders \npage under Profile tab",
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            buttonRounded('MY ORDERS', Color(0xff515C6F), Color(0xffF9C705),
                'assets/img/icon_arrow.png')
          ],
        ),
      ),
    );
  }
}
