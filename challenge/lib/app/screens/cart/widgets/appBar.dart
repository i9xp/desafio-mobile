import 'package:badges/badges.dart';
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
              Badge(
                badgeContent: Text('5'),
                badgeColor: Colors.yellow,
                position: BadgePosition.bottomLeft(),
                child: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Badge(
                badgeContent: Text('9'),
                badgeColor: Colors.yellow,
                position: BadgePosition.bottomLeft(),
                child: Icon(
                  Icons.add_alert,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
