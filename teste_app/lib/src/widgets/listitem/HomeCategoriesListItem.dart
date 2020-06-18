import 'package:flutter/material.dart';
import 'package:testeapp/src/widgets/Text.dart';
import 'package:testeapp/src/values/dimens.dart' as dimens;

class HomeCategoriesListItem extends StatelessWidget {

  final String asset;
  final String nome;

  const HomeCategoriesListItem({Key key, this.asset, this.nome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(
        right: dimens.paddingCategoriesItens
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 65,
            height: 65,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(65))
            ),
          ),
          CustomText(
            text: nome,
            size: TextSize.SMALL,
          )
        ],
      ),
    );
  }
}
