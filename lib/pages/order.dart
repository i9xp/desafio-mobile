import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OrderPage extends StatelessWidget {
  final scaffoldKey;

  OrderPage({
    this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 30,
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
            Expanded(
                child: Center(
              child: Container(
                height: 20,
                width: 20,
                color: Colors.red,
              ),
            ))
          ],
        ),
      ]),
    ));
  }
}
