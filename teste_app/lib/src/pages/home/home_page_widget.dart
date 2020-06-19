import 'package:flutter/material.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;
import 'package:testeapp/src/widgets/Text.dart';
import 'package:testeapp/src/widgets/listitem/HomeCategoriesListItem.dart';
import 'package:testeapp/src/widgets/listitem/LatestListItem.dart';
import 'package:testeapp/src/widgets/listitem/ProductsListItem.dart';
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

  Widget homeListLatest({BuildContext context}){
    return Flexible(
      fit: FlexFit.tight,
      flex: 2,
      child: Container(
        width: MediaQuery.of(context).size.width,
        color: colors.grayDarker,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32,),
            Padding(
              padding:  EdgeInsets.only(
                  left: dimens.paddingTittle
              ),
              child: CustomText(
                text: "Latest",
                size: TextSize.BIG,
              ),
            ),
            SizedBox(height: 14,),
            Container(
              padding: EdgeInsets.only(
                left: 16
              ),
              width: MediaQuery.of(context).size.width,
              height: 205,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx,index){
                  return LatestItemList();
                }
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget homeLastItens({BuildContext context}){
    return  Flexible(
      fit: FlexFit.tight,
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ProductListIte(),
          ProductListIte(),
          ProductListIte(),
        ],
      )
    );
  }
}