import 'package:badges/badges.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:desafioi9xp/styles/appstyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomAppBar extends StatelessWidget {
  bool showLogo;

  CustomAppBar({this.showLogo = true});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            showLogo
                ? Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Image.asset("assets/images/logo.png"),
                  )
                : Container(),
            Row(
              children: [
                Badge(
                  badgeContent: Text(
                    "1",
                    style: AppStyle.BADGE_NUMBER,
                  ),
                  badgeColor: AppColors.primary,
                  position: BadgePosition.bottomLeft(left: 0.0, bottom: 0.0),
                  child: Container(
                    width: 32,
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {},
                      child: SvgPicture.asset(
                        "assets/icons/messages.svg",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(width: 15),
                Badge(
                  badgeContent: Text(
                    "1",
                    style: AppStyle.BADGE_NUMBER,
                  ),
                  badgeColor: AppColors.primary,
                  position: BadgePosition.bottomLeft(left: 0.0, bottom: 0.0),
                  child: Container(
                    width: 32,
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: () {},
                      child: SvgPicture.asset(
                        "assets/icons/notifications.svg",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
