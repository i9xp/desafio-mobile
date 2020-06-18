import 'package:flutter/material.dart';
import 'package:testeapp/src/models/BottomNavItemModel.dart';
import 'package:testeapp/src/widgets/Text.dart';
import 'package:testeapp/src/values/colors.dart' as colors;

class BottomNavListItem extends StatelessWidget {

  final BottomNavItemModel model;

  const BottomNavListItem({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.tight,
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(model.icone,color: colors.white,),
          CustomText(
            text: model.nome,
            size: TextSize.SMALL,
          )
        ],
      ),
    );
  }
}
