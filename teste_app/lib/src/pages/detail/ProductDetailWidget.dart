import 'package:flutter/material.dart';
import 'package:testeapp/src/helpers/navigation/nav_slide_from_top.dart';
import 'package:testeapp/src/pages/cart/CartPage.dart';

import 'package:testeapp/src/values/dimens.dart' as dimens;
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/widgets/CustomActionButton.dart';
import 'package:testeapp/src/widgets/Text.dart';
import 'package:testeapp/src/widgets/listitem/DetailLabelNameListItem.dart';

class ProductDetailWidget {
  Widget productDetailImage(){
    return Container(
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
    );
  }

  Widget rowWithLabels(){
    return Row(
      children: [
        DetailLabelNameLiistItem(
          label: "Product",
          isActivated: false,
        ),
        DetailLabelNameLiistItem(
          label: "Details",
          isActivated: true,
        ),
        DetailLabelNameLiistItem(
          label: "Reviews",
          isActivated: false,
        )
      ],
    );
  }

  Widget customDetailBottomNav({BuildContext context}){
    return Container(
      color: colors.grayDarker,
      height: 78,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomActionButton(
            label: "SHARE THIS",
            iconBackgroundColor: colors.accentDark,
            iconColor: colors.white,
            icone: Icons.arrow_upward,
            btnBackgroundColor: colors.white,
          ),
          CustomActionButton(
            label: "ADD TO CART",
            iconBackgroundColor: colors.white,
            iconColor: colors.accentDark,
            icone: Icons.arrow_forward_ios,
            btnBackgroundColor: colors.accentDark,
            onPressed: () => navigateToCart(context: context),
          )
        ],
      ),
    );
  }

  void navigateToCart({BuildContext context}){
    Navigator.push(context, NavSlideFromTop(
      page: CartPage()
    ));
  }

  Widget productInfoWidget({String label,String labelValue,String subTitle,String subTitleValue, BuildContext context}){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: Padding(
        padding: EdgeInsets.only(top: 8,left: 16,right: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: "BRAND",
                    color: colors.white,
                  ),
                  CustomText(
                    text: "Lily's Ankle Boots",
                    color: colors.white,
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomText(
                  text: "SKU",
                  color: colors.white,
                ),
                CustomText(
                  text: "0025556052511515",
                  color: colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
    );

  }
}