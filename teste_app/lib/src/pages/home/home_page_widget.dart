import 'package:flutter/material.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;
import 'package:testeapp/src/widgets/Text.dart';
import 'package:testeapp/src/widgets/listitem/HomeCategoriesListItem.dart';
class HomePageWidget{

  Widget homeListaDeCategorias({BuildContext context}){
    return Flexible(
      fit: FlexFit.tight,
      flex: 1,
      //todo colocar gradient no container
      child: Container(
        decoration: BoxDecoration(
          color: colors.grayDarker
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.only(
                left: dimens.paddingTittle
              ),
              child: CustomText(
                text: "Categories",
                size: TextSize.BIG,
              ),
            ),
            SizedBox(height: 14,),
             Flex(
              direction: Axis.horizontal,
              children: homeItens(),
            )
          ],
        ),
      ),
    );
  }

  List<Widget> homeItens(){
    return [
      HomeCategoriesListItem(
        nome: "Appearel",
      ),
      HomeCategoriesListItem(
        nome: "Beauty",
      ),
      HomeCategoriesListItem(
        nome: "Shoes",
      ),
      HomeCategoriesListItem(
        nome: "See All",
      )
    ];
  }
}