import 'package:badges/badges.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:desafioi9xp/styles/appstyle.dart';
import 'package:flutter/material.dart';

class CustomAppBar {
  bool showLogo;
  Color backgroundColor;

  CustomAppBar({
    this.showLogo = true,
    this.backgroundColor = AppColors.bgBottomNavBarColor,
  });

  AppBar getBar() {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: false,
      elevation: 0,
      title: showLogo
          ? Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Image.asset("assets/images/logo.png"),
            )
          : Container(),
      actions: [
        Badge(
          badgeContent: Text(
            "5",
            style: AppStyle.BADGE_NUMBER,
          ),
          badgeColor: AppColors.primaryColor,
          position: BadgePosition.bottomLeft(left: 0.0, bottom: 10.0),
          child: Container(
            width: 48,
            child: FlatButton(
              padding: EdgeInsets.zero,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {},
              child: Icon(
                Icons.message,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Badge(
          badgeContent: Text(
            "9",
            style: AppStyle.BADGE_NUMBER,
          ),
          badgeColor: AppColors.primaryColor,
          position: BadgePosition.bottomLeft(left: 0.0, bottom: 10.0),
          child: Container(
            width: 48,
            child: FlatButton(
              padding: EdgeInsets.zero,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {},
              child: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
