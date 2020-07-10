import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class I9XPButton extends StatelessWidget {
  final Function action;
  final String label;
  final IconData icon;
  final Color iconColor;
  final Color iconBackgroundColor;
  final Color buttonColor;

  I9XPButton(
    this.action, {
    this.label = "Button",
    this.icon = Feather.chevron_right,
    this.iconColor,
    this.iconBackgroundColor,
    this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: action,
      padding: EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      color: buttonColor ?? AppColors.white,
      elevation: 1,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              this.label,
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.4,
                fontSize: 12,
                color: AppColors.marineDark,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 26,
            height: 26,
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              color: iconBackgroundColor ?? AppColors.yellow,
              borderRadius: BorderRadius.circular(26),
            ),
            child: Icon(
              this.icon ?? Feather.home,
              size: 16,
              color: iconColor ?? AppColors.white,
            ),
          )
        ],
      ),
    );
  }
}
