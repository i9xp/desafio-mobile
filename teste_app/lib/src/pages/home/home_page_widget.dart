import 'package:flutter/material.dart';
import 'package:testeapp/src/models/BannerModel.dart';
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
      child: Container(
        color: colors.grayDarker,
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
        asset: "assets/apparel.png",
      ),
      HomeCategoriesListItem(
        nome: "Beauty",
        asset: "assets/b.png",
      ),
      HomeCategoriesListItem(
        nome: "Shoes",
        asset: "assets/shoes.png",
      ),
      HomeCategoriesListItem(
        nome: "See All",
      )
    ];
  }

  List<BannerModel> bannerlist(){
    return [
      BannerModel(
        "For all your summer clothing needs",
        "SEE MORE",
        "assets/banner1.png"
      ),
      BannerModel(
          "For all your summer clothing needs",
          "SEE MORE",
          "assets/banner2.png"
      )
    ];
  }

  Widget homeListLatest({BuildContext context}){
    return Flexible(
      fit: FlexFit.tight,
      flex: 2,
      child: Container(
        width: MediaQuery.of(context).size.width,
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
                itemCount: bannerlist().length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx,index){
                  final obj = bannerlist()[index];
                  return LatestItemList(
                    text: obj.text,
                    assets: obj.assets,
                    buttonLabel: obj.buttonLabel,
                  );
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
          ProductListItem(
            text: "Ankl Boots",
            asset: "assets/high_hels.png",
            value: "49.00",
          ),
          ProductListItem(
            value: "20.58",
            asset: "assets/backpack.png",
            text: "Backpack",
          ),
          ProductListItem(
            text: "Red Scarf",
            asset: "assets/scarf.png",
            value: "11.00",
          ),
        ],
      )
    );
  }
}