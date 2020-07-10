import 'package:flutter/material.dart';
import 'package:i9xp_commerce/models/order_item.model.dart';

import 'list_item_image.dart';
import 'list_item_info.dart';

class CartListItem extends StatelessWidget {

  final OrderItemModel orderItem;
  CartListItem(this.orderItem);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, bottom: 35),
      child: Row(
        children: <Widget>[
          CartListItemImage(this.orderItem.imageUrl.value),
          SizedBox(width: 20),
          CartListItemInfo(this.orderItem),
        ],
      ),
    );
  }
}
