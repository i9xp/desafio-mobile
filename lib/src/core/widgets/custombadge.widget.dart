import 'package:badges/badges.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:desafioi9xp/styles/appstyle.dart';
import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  int count;
  Icon icon;

  CustomBadge({this.count, this.icon});

  @override
  Widget build(BuildContext context) {
    return count == 0
        ? Container(
            width: 48,
            child: FlatButton(
              padding: EdgeInsets.zero,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {},
              child: icon,
            ),
          )
        : Badge(
            badgeContent: Text(
              "$count",
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
                child: icon,
              ),
            ),
          );
  }
}
