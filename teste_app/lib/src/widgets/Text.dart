import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;

class CustomText extends StatelessWidget {

  final String text;
  final TextSize size;
  final Color color;
  final TextStyle style;

  const CustomText({Key key, this.text,this.style, this.size, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style != null ? style : TextStyle(
        fontSize: size == TextSize.BIG ?
          dimens.textTitleBug :
          size == TextSize.SMALL ? dimens.textSmall
          : size == TextSize.BANNER ?
              dimens.textBanner
              : dimens.textMedium,
        color: color != null ? color : colors.white,
      ),
    );
  }
}

enum TextSize{
  BIG,NORMAL,SMALL,BANNER
}
