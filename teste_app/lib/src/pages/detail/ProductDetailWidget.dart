import 'package:flutter/material.dart';

import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;
import 'package:testeapp/src/widgets/CustomActionButton.dart';
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

  Widget customDetailBottomNav(){
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
          )
        ],
      ),
    );

  }
}