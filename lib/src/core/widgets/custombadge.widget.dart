import 'package:badges/badges.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:desafioi9xp/styles/appstyle.dart';
import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  int count;
  Icon icon;
  BadgePosition position;
  Function onPressed;

  CustomBadge({
    this.count,
    this.icon,
    this.onPressed,
    this.position,
  });

  @override
  Widget build(BuildContext context) {
    return count == 0 || count == null
        ? Container(
            width: 48,
            child: IconButton(
              icon: icon,
              onPressed: onPressed,
            ),
          )
        : Badge(
            badgeContent: Text(
              "$count",
              style: AppStyle.BADGE_NUMBER,
            ),
            badgeColor: AppColors.primaryColor,
            position: position != null ? position : BadgePosition.bottomLeft(left: 5.0, bottom: 10.0) ,
            child: Container(
              width: 48,
              child: IconButton(
                icon: icon,
                onPressed: onPressed,
              ),
            ),
          );
  }
}
