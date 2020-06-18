import 'package:flutter/material.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;

class CustomText extends StatelessWidget {

  final String text;
  final TextSize size;
  final Color color;

  const CustomText({Key key, this.text, this.size, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size == TextSize.BIG ? dimens.textTitleBug : size == TextSize.SMALL ? dimens.textSmall : dimens.textMedium,
        color: color != null ? color : colors.white
      ),
    );
  }
}

enum TextSize{
  BIG,NORMAL,SMALL
}
