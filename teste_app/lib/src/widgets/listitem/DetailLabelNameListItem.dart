import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testeapp/src/widgets/Text.dart';

import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;

class DetailLabelNameLiistItem extends StatelessWidget {

  final bool isActivated;
  final String label;

  const DetailLabelNameLiistItem({Key key, this.isActivated, this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78,
      height: 31,
      decoration: BoxDecoration(
        color: isActivated ? colors.accentDark : Colors.transparent,
        borderRadius: BorderRadius.circular(16)
      ),
      child: Center(
        child: CustomText(
          color: isActivated ? colors.grayDarker : colors.white,
          text: label,
          size: TextSize.NORMAL,
        ),
      ),
    );
  }
}
