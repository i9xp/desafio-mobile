import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/widgets/button_i9xp.dart';

class OrderPage extends StatelessWidget {
  final scaffoldKey;

  OrderPage({
    this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xFF515C6F),
      height: MediaQuery.of(context).size.height,
      child: Column(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    // behavior: HitTestBehavior.translucent,
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.centerLeft,
                      child: Icon(
                        Icons.close,
                        color: Color(0xFFF9C705),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 120),
              child: Image(
                width: MediaQuery.of(context).size.width * 0.3,
                image: AssetImage('assets/icons/icon-check.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 27),
              child: Text(
                'Order Placed!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(62, 27, 62, 0),
              child: Text(
                'Your order was placed successfully. For more details, check All My Orders page under Profile tab',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: ButtonI9XP(onTap: null, title: 'MY ORDERS'),
            ),
          ],
        ),
      ]),
    ));
  }
}
