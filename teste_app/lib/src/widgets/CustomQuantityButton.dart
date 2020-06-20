import 'package:flutter/material.dart';

import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;

class CustomQuantityButton extends StatelessWidget {

  final IconData icone;
  final Function onTap;

  const CustomQuantityButton({Key key, this.icone, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
            color: colors.accentDark,
            borderRadius: BorderRadius.circular(24)
        ),
        child: Center(
          child: Icon(icone,color:colors.white),
        ),
      ),
    );
  }
}
