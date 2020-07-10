import 'package:challenge/app/shared/widgets/buttonRoundedCustom.dart';
import 'package:flutter/material.dart';

Widget bottomNavigationProduct() {
  return Container(
    height: 78,
    color: Color(0xff2E3746),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        buttonRounded('SHARED THIS', Color(0xff727C8E), Colors.white,
            'assets/img/icon_up.png'),
        buttonRounded('ADD TO CART', Color(0xff727C8E), Color(0xFFF9C705),
            'assets/img/icon_arrow.png'),
      ],
    ),
  );
}
