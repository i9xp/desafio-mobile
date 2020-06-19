import 'package:flutter/material.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;
import 'package:testeapp/src/widgets/Text.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.gray,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.gray,
        leading: IconButton(
          onPressed: ()=> Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios,color: colors.accentDark,),
        ),
        centerTitle: true,
        title: Column(
          children: [
            CustomText(
              text: "FauxSued Ankle Boots",
            ),
            CustomText(
              text: r"$"+"49.99",
            )
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add_shopping_cart,color: colors.white,),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 301,
                height: 206,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/shoes_detail.png",
                    )
                  ),
                )
              ),
            ],
          )

        ],
      ),

    );
  }
}
