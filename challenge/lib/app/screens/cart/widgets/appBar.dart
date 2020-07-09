import 'package:flutter/material.dart';

class AppBarCustomCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Container(
          width: 80,
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.message, color: Colors.white),
              Icon(
                Icons.add_alert,
                color: Colors.white,
              )
            ],
          ),
        ),
      ],
    );
  }
}
