import 'package:flutter/material.dart';
import 'package:i9xp/app/modules/home/models/bottom_bar_item_model.dart';
import 'package:i9xp/app/modules/home/models/bottom_bar_item_type.dart';
import 'package:i9xp/app/shared/constants/assets.dart';
import 'package:i9xp/app/shared/constants/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomNavigationBar extends StatefulWidget {
  final List<BottomBarItem> items;
  final int currentIndex;
  final Function(int) onTap;

  const AppBottomNavigationBar({
    Key key,
    this.items = const <BottomBarItem>[],
    this.currentIndex,
    this.onTap,
  }) : super(key: key);

  @override
  _AppBottomNavigationBarState createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  final assets = {
    BottombarItemType.HOME: Icons.home,
    BottombarItemType.SEARCH: Icons.search,
    BottombarItemType.CART: Icons.shopping_cart,
    BottombarItemType.PROFILE: Icons.person,
    BottombarItemType.MORE: Icons.reorder,
  };

  // final assets = {
  //   BottombarItemType.HOME: AppAssets.HOME,
  //   BottombarItemType.SEARCH: AppAssets.SEARCH,
  //   BottombarItemType.CART: AppAssets.CART,
  //   BottombarItemType.PROFILE: AppAssets.PROFILE,
  //   BottombarItemType.MORE: AppAssets.MORE,
  // };

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: widget.items.map(_itemToWidget).toList(),
      currentIndex: widget.currentIndex,
      unselectedItemColor: AppStyles.TABBAR_ITEM.color,
      selectedItemColor: AppStyles.SELECTED_TABBAR_ITEM.color,
      onTap: widget.onTap,
      showUnselectedLabels: true,
      iconSize: 20.w,
      unselectedFontSize: AppStyles.TABBAR_ITEM.fontSize,
      selectedFontSize: AppStyles.TABBAR_ITEM.fontSize,
      type: BottomNavigationBarType.fixed,
    );
  }

  BottomNavigationBarItem _itemToWidget(BottomBarItem e) {
    final asset = assets[e.icon];
    return BottomNavigationBarItem(
      icon: Icon(asset),
      // icon: Padding(
      //   padding: const EdgeInsets.only(bottom: 5.0),
      //   child: Image.asset(asset),
      // ),
      title: Text(e.title),
    );
  }
}
