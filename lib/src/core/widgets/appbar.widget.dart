import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  bool showLogo;
  Color backgroundColor;
  bool automaticallyImplyLeading;
  List<Widget> actions;

  CustomAppBar({
    this.showLogo = true,
    this.backgroundColor = AppColors.bgBottomNavBarColor,
    this.automaticallyImplyLeading = false,
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: backgroundColor,
      centerTitle: false,
      elevation: 0,
      title: showLogo
          ? Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Image.asset("assets/images/logo.png"),
            )
          : Container(),
      actions: actions,
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size(0, 50);
}
