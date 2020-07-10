import 'package:badges/badges.dart';
import 'package:challenge/app/screens/cart/cart.dart';
import 'package:flutter/material.dart';

class AppBarCustomProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.amberAccent,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Foux Sued Ankle Boots',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                '\$ 49.99',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Badge(
            badgeContent: Text('7'),
            badgeColor: Colors.yellow,
            position: BadgePosition.bottomLeft(),
            child: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
