import 'package:flutter/material.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;
import 'package:testeapp/src/widgets/Text.dart';
class HomePageWidget{

  Widget homeListaDeCategorias({BuildContext context}){
    return Flexible(
      fit: FlexFit.tight,
      flex: 1,
      //todo colocar gradient no container
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: colors.grayDarker
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Categories",
              size: TextSize.BIG,
            )
          ],
        ),
      ),
    );
  }
}