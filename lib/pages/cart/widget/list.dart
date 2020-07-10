import 'package:flutter/material.dart';

import 'list_item.dart';

class CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return CartListItem();
        },
        childCount: 4,
      ),
    );
  }
}
