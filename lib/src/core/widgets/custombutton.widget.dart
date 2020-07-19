import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:desafioi9xp/styles/appstyle.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String title;
  Color backgroundColor;
  Widget icon;
  Function onPressed;

  CustomButton(
    this.title, {
    this.backgroundColor = AppColors.primaryColor,
    this.icon,
    this.onPressed,
  }) {
    this.icon = this.icon != null ? this.icon : Image.asset("assets/images/next.png");
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                title,
                style: AppStyle.CUSTOM_BUTTON_TEXT,
              ),
            ),
            SizedBox(
              height: 30,
              width: 30,
              child: icon,
            ),
          ],
        ),
      ),
    );
  }
}
