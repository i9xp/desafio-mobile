import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:i9xp_commerce/commons/i9xp_button.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class DataOffline extends StatelessWidget {
  final Function onReset;
  final String title;
  final String message;

  DataOffline({
    this.onReset,
    this.title = "Without connection",
    this.message = "Please, check your internet connection and try again.",
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(62),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Icon(
                Feather.wifi_off,
                size: 62,
                color: AppColors.yellow,
              ),
            ),
            SizedBox(height: 37),
            Text(
              this.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 15),
            Text(
              this.message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 1.4,
                color: AppColors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Visibility(
              visible: this.onReset != null,
              child: Padding(
                padding: EdgeInsets.only(top: 50),
                child: SizedBox(
                  width: 160,
                  child: I9XPButton(
                    this.onReset,
                    label: "TRY AGAIN",
                    icon: Feather.chevron_right,
                    iconColor: AppColors.yellow,
                    iconBackgroundColor: AppColors.white,
                    buttonColor: AppColors.yellow,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
