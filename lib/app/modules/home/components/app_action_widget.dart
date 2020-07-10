import 'package:flutter/material.dart';
import 'package:i9xp/app/modules/home/models/action_type.dart';
import 'package:i9xp/app/shared/constants/assets.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'package:i9xp/app/shared/constants/styles.dart';

class AppAction extends StatefulWidget {
  final ActionType type;
  final int number;

  const AppAction({
    Key key,
    @required this.type,
    this.number,
  }) : super(key: key);

  @override
  _AppActionState createState() => _AppActionState();
}

class _AppActionState extends State<AppAction> {
  final assets = {
    ActionType.CART: AppAssets.CART,
    ActionType.MESSAGES: AppAssets.MESSAGES,
    ActionType.NOTIFICATIONS: AppAssets.NOTIFICATIONS,
  };

  String get asset => assets[widget.type];
  bool get hasBadge => widget.number != null;
  bool get ten => widget.number > 9;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(asset),
          ),
          if (hasBadge)
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  color: AppColors.BAGDE_BACKGROUND,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    "${widget.number}",
                    style: ten
                        ? AppStyles.BADGE_NUMBER_TEN
                        : AppStyles.BADGE_NUMBER,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
