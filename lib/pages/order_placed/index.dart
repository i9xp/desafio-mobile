import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/commons/i9xp_button.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class OrderPlaced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.marineLight,
      body: Align(
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
                    Feather.check,
                    size: 62,
                    color: AppColors.yellow,
                  ),
                ),
                SizedBox(height: 37),
                Text(
                  "Order Placed",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: AppColors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  "Your order was placed successfully. For more details, check All My Orders page under Profile tab",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.4,
                    color: AppColors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 50),
                SizedBox(
                  width: 160,
                  child: I9XPButton(
                    () => Get.offAllNamed("/"),
                    label: "MY ORDERS",
                    icon: Feather.chevron_right,
                    iconColor: AppColors.yellow,
                    iconBackgroundColor: AppColors.white,
                    buttonColor: AppColors.yellow,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
