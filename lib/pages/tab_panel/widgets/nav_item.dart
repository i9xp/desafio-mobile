import 'package:flutter/material.dart';
import 'package:i9xp_commerce/models/nav_bottom_item.model.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class NavItem extends StatelessWidget {
  final NavBottomItemModel item;
  final bool selected;
  NavItem(this.item, this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            this.item.icon,
            size: 16,
            color: this.selected ? AppColors.yellow : AppColors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: DefaultTextStyle.merge(
              style: TextStyle(
                color: this.selected ? AppColors.yellow : AppColors.white,
                fontSize: 11,
                fontWeight: FontWeight.w600
              ),
              child: Text(this.item.label),
            ),
          )
        ],
      ),
    );
  }
}
