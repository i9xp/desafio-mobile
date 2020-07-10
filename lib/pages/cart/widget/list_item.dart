import 'package:flutter/material.dart';
import 'package:i9xp_commerce/pages/cart/widget/list_item_image.dart';
import 'package:i9xp_commerce/pages/cart/widget/list_item_info.dart';

class CartListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 35),
      child: Row(
        children: <Widget>[
          CartListItemImage("https://i9xp-commerce.s3.amazonaws.com/products/0001.png"),
          SizedBox(width: 20),
          CartListItemInfo(59.90)
        ],
      ),
    );
  }
}
