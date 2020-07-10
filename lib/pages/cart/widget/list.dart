import 'package:flutter/material.dart';
import 'package:i9xp_commerce/models/order_item.model.dart';

import 'list_item.dart';

class CartList extends StatelessWidget {

  final List<OrderItemModel> items;
  CartList(this.items);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return CartListItem(this.items[index]);
        },
        childCount: this.items.length ?? 0,
      ),
    );
  }
}
