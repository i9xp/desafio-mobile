import 'package:flutter/material.dart';
import 'package:i9xp_commerce/models/nav_bottom_item.model.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';
import 'nav_item.dart';

class NavBar extends StatelessWidget {
  final List<NavBottomItemModel> items;
  final Function(int index) setSelectedIndex;
  final int selectedIndex;

  NavBar(
    this.items,
    this.selectedIndex,
    this.setSelectedIndex,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        color: AppColors.marine,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items.map((item) {
          var index = items.indexOf(item);
          return Expanded(
            flex: 1,
            child: GestureDetector(
              onTapDown: (_) => this.setSelectedIndex(index),
              child: NavItem(item, this.selectedIndex == index),
            ),
          );
        }).toList(),
      ),
    );
  }
}
