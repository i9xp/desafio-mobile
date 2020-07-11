import 'package:flutter/material.dart';
import 'package:i9xp/app/shared/constants/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBottomNavigationBar extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final Function(int) onTap;

  const AppBottomNavigationBar({
    Key key,
    this.items = const <BottomNavigationBarItem>[],
    this.currentIndex,
    this.onTap,
  }) : super(key: key);

  @override
  _AppBottomNavigationBarState createState() => _AppBottomNavigationBarState();
}

class _AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: widget.items,
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
}
