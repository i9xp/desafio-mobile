import 'package:flutter/material.dart';
import 'package:testeapp/src/widgets/Text.dart';
import 'package:testeapp/src/values/dimens.dart' as dimens;
import 'package:testeapp/src/values/colors.dart' as colors;

class HomeCategoriesListItem extends StatelessWidget {

  final String asset;
  final String nome;

  const HomeCategoriesListItem({Key key, this.asset, this.nome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Flexible(
      fit: FlexFit.tight,
      flex: 1,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                color: colors.white,
                borderRadius: BorderRadius.circular(65),
                image: DecorationImage(
                  image: AssetImage(
                    asset == null ? "" : asset
                  )
                )
              ),
              child: asset == null ?Icon(
                Icons.arrow_forward_ios,
                color: colors.accentDark,
              ) : null,
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
