import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            'assets/img/logo.png',
            width: 50,
            height: 50,
          ),
          Row(
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
          )
        ],
      ),
    );
  }
}
