import 'package:flutter/material.dart';
import 'package:testeapp/src/helpers/navigation/nav_slide_from_left.dart';
import 'package:testeapp/src/pages/home/home_page.dart';

import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;
import 'package:testeapp/src/widgets/CustomActionButton.dart';
import 'package:testeapp/src/widgets/Text.dart';

class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.gray,
      appBar: AppBar(
        backgroundColor: colors.gray,
        elevation: 0,
        leading: Container(),
        actions: [
          IconButton(
            onPressed: () => navigateToHome(context: context),
            icon: Icon(Icons.close,color: colors.accentDark,),
          )
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 101,
                height: 101,
                decoration: BoxDecoration(
                  color: colors.white,
                  borderRadius: BorderRadius.circular(101)
                ),
                child: Center(
                  child: Icon(Icons.check,color: colors.accentDark,size: 62,),
                ),
              ),
              SizedBox(height: 32,),
              CustomText(
                text: "Order placed",
                size: TextSize.BIG,
              ),
              SizedBox(height: 14,),
              Container(
                width: 292,
                child: CustomText(
                  text: "Your order was placed sucessfuly. \nFor more details, check All My Orders page under Profile tab",
                ),
              ),
              SizedBox(height: 32,),
              CustomActionButton(
                label: "MY ORDERS",
                iconBackgroundColor: colors.white,
                iconColor: colors.accentDark,
                icone: Icons.arrow_forward_ios,
                btnBackgroundColor: colors.accentDark,
                onPressed: () => navigateToHome(context: context),
              )
            ],
          ),
        ],
      ),
    );
  }

  void navigateToHome({BuildContext context}){
    Navigator.pushReplacement(context, NavSlideFromLeft(
      page: HomePage()
    ));
  }
}
