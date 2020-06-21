
import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';

class AppBottomNavigationBar extends StatelessWidget {

  final int index;
  final ValueChanged<int> onTap;

  AppBottomNavigationBar({Key key, @required this.index, @required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image(image: AppImage.home, color: Theme.of(context).backgroundColor,),
            activeIcon: Image(image: AppImage.home, color: Theme.of(context).accentColor,),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Image(image: AppImage.search, color: Theme.of(context).backgroundColor,),
            activeIcon: Image(image: AppImage.search, color: Theme.of(context).accentColor,),
            title: Text('Search'),
          ),
          BottomNavigationBarItem(
            icon: Image(image: AppImage.cart, color: Theme.of(context).backgroundColor,),
            activeIcon: Image(image: AppImage.cart, color: Theme.of(context).accentColor,),
            title: Text('Cart'),
          ),
          BottomNavigationBarItem(
            icon: Image(image: AppImage.profile, color: Theme.of(context).backgroundColor,),
            activeIcon: Image(image: AppImage.profile, color: Theme.of(context).accentColor,),
            title: Text('Profile'),
          ),
          BottomNavigationBarItem(
            icon: Image(image: AppImage.more, color: Theme.of(context).backgroundColor,),
            activeIcon: Image(image: AppImage.more, color: Theme.of(context).accentColor,),
            title: Text('More'),
          ),
        ],
        currentIndex: index,
        selectedItemColor: Theme.of(context).accentColor,
        onTap: onTap,
      );
  }
}