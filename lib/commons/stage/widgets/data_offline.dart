import 'package:flutter/material.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class DataOffline extends StatelessWidget {
  
  final Function onReset;
  final String illustration;
  final String title;
  final String message;

  DataOffline({
    this.onReset,
    this.illustration = 'assets/images/illustrations/offline.png',
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
            Image.asset(
              this.illustration,
              height: 128,
            ),
            SizedBox(height: 25),
            Text(
              this.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            Text(
              this.message,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            Visibility(
              visible: this.onReset != null,
              child: Padding(
                padding: EdgeInsets.only(top: 15),
                child: RawMaterialButton(
                  onPressed: onReset,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  fillColor: AppColors.marine,
                  child: Text(
                    "Try again",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
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
