import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/src/app_components/buttons/app_button.dart';
import 'package:i9xp_visual_pkg/src/app_components/spacers/hspace.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_colors/app_color.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_dimens/app_dimens.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_fonts/app_text_style.dart';

class CartBottomBar extends StatelessWidget {

  final String total;
  final VoidCallback onCheckout;
  const CartBottomBar([this.total, this.onCheckout]);

  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double paddingPlus = width > 320 ? PADDING_S : 0;

    return Container(
            padding: EdgeInsets.only(left: PADDING, right: PADDING_S),
            color: GREY_3,
            width:  MediaQuery.of(context).size.width,
            height: 70,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('TOTAL', style: DISPLAY4.copyWith(color: WHITE.withOpacity(.6)),),
                      Text('\$${total ?? '0'}', style: TITLE.copyWith(fontSize: 20)),
                      Text('Free Domestic Shipping', style: CAPTION),
                    ],
                  ),
                ),
                Expanded(
                  child: AppButton(
                    label: ' CHECKOUT ',
                    onTap: onCheckout,
                  )
                ),
                HSpace(paddingPlus),
              ],
            ),
          );
  }
}