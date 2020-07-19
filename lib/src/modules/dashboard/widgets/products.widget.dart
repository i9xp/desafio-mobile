import 'package:desafioi9xp/src/modules/dashboard/widgets/product_item.widget.dart';
import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Wrap(
        spacing: 4.0,
        runSpacing: 4.0,
        direction: Axis.horizontal,
        children: [
          ProductItemListView(),
          ProductItemListView(),
          ProductItemListView(),
          ProductItemListView(),
          ProductItemListView(),
          ProductItemListView(),
        ],
      ),
    );
  }
}
