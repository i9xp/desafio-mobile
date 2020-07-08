import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Image.asset(
              'assets/img/logo.png',
              width: 50,
              height: 50,
            ),
          ),
        ],
      ),
    );
  }
}
