import 'package:desafio_mobile/shared/utils/colors_util.dart';
import 'package:desafio_mobile/shared/widgets/default_button.dart';
import 'package:flutter/material.dart';

class CheckoutModalPage extends StatefulWidget {
  @override
  _CheckoutModalPageState createState() => _CheckoutModalPageState();
}

class _CheckoutModalPageState extends State<CheckoutModalPage> {
  ColorsUtil colors = ColorsUtil();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.bgColorHomeBody,
      appBar: AppBar(
        backgroundColor: colors.bgColorHomeBody,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Image.asset(
                "assets/images/close.png",
                height: 20,
                width: 20,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/icon_check.png",
              height: MediaQuery.of(context).size.height * 0.15,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              "Order Placed!",
              style: TextStyle(color: Colors.white, fontSize: 34),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Text(
              "Your order was placed succesfully.",
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400,),
            ),
            Text(
              "For more details, check All My Orders \n page under Profile tab",
              style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w400, height: 1.5),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            DefaultButton(
              color: colors.seeAllIcon,
              imgUrl: "assets/images/details_icon1.png",
              label: "MY ORDERS",
            )
          ],
        ),
      ),
    );
  }
}
