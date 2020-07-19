import 'package:desafioi9xp/src/core/widgets/custombadge.widget.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
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
        CustomBadge(
          count: 5,
          icon: Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
        CustomBadge(
          count: 9,
          icon: Icon(
            Icons.notifications_none,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
