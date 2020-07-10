import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:i9xp_commerce/commons/i9xp_button.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class DataOffline extends StatelessWidget {
  final Function onReset;
  final String illustration;
  final String title;
  final String message;

  DataOffline({
    this.onReset,
    this.illustration,
    this.title = "Without connection with internet",
    this.message = "Please, check your internet connection and try again.",
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: this.illustration != null,
              child: Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: this.illustration != null
                    ? Image.asset(
                        this.illustration,
                        height: 128,
                      )
                    : SizedBox.shrink(),
              ),
            ),
            Text(
              this.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: AppColors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 15),
            Text(
              this.message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: AppColors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
            Visibility(
              visible: this.onReset != null,
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: I9XPButton(
                  this.onReset,
                  label: "TRY AGAIN",
                  icon: Feather.refresh_ccw,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
