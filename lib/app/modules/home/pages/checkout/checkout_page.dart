import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/app_action_widget.dart';
import 'package:i9xp/app/modules/home/components/bottom_button_widget.dart';
import 'package:i9xp/app/modules/home/models/action_type.dart';
import 'package:i9xp/app/modules/home/pages/product/models/bottom_button_type.dart';
import 'package:i9xp/app/shared/constants/assets.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'package:i9xp/app/shared/constants/styles.dart';
import 'checkout_controller.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckoutPage extends StatefulWidget {
  final String title;
  const CheckoutPage({Key key, this.title = "Checkout"}) : super(key: key);

  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState
    extends ModularState<CheckoutPage, CheckoutController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PRODUCT_PAGE_BACKGROUND,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: AppAction(
              type: ActionType.CLOSE,
              onTap: () {
                Modular.to.pop();
              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(AppAssets.CHECKOUT_DONE, width: 100.h),
              SizedBox(height: 37.h),
              Text("Order Placed!", style: AppStyles.CHECKOUT_TITLE),
              SizedBox(height: 14.h),
              Text(
                "Your order was placed successfully. \nFor more details, check All My Orders page under Profile tab",
                style: AppStyles.CHECKOUT_CONTENT,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50.h),
              BottomButton(
                type: BottomButtonType.CHECKOUT,
                label: "MY ORDERS",
                color: AppColors.BAGDE_BACKGROUND,
                labelStyle: AppStyles.PRODUCT_BOTTOM_BUTTON,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
