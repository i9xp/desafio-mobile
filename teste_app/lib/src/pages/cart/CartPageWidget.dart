import 'package:flutter/material.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;
import 'package:testeapp/src/widgets/CustomActionButton.dart';
import 'package:testeapp/src/widgets/Text.dart';

class CartPageWidget {
  Widget rowWithActions(){
    return Flexible(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(Icons.message,color: colors.white,),
          ),
          IconButton(
            icon: Icon(Icons.add_alert,color: colors.white,),
          )
        ],
      ),
    );
  }

  Widget rowWithTitle(){
    return Flexible(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.only(left: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           CustomText(
             text: "Cart",
             color: colors.white,
             size: TextSize.BIG,
           )
          ],
        ),
      ),
    );
  }

  Widget cartListItens(){
    return Flexible(
      flex: 10,
      child: Padding(
        padding: EdgeInsets.only(left: 24),
        child: ListView.builder(
            itemBuilder: (context,index){
              //todo comeco
              return Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 16
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 105,
                  child: Row(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: colors.white,
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Center(
                          child: Image.asset(
                              'assets/high_hels.png',
                            height: 60,
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(
                          left: 24
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Nome do produto",
                            ),
                            CustomText(
                              text: "Nome do produto",
                            ),
                            SizedBox(height: 16,),
                            CustomText(
                              text: "Nome do produto",
                            ),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                    color: colors.accentDark,
                                    borderRadius: BorderRadius.circular(24)
                                  ),
                                  child: Center(
                                    child: Icon(Icons.remove,color:colors.white),
                                  ),
                                ),
                                Padding(
                                  padding:  EdgeInsets.symmetric(
                                    horizontal: 16
                                  ),
                                  child: CustomText(
                                    text: "1",
                                  ),
                                ),
                                Container(
                                  width: 24,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      color: colors.accentDark,
                                      borderRadius: BorderRadius.circular(24)
                                  ),
                                  child: Center(
                                    child: Icon(Icons.add,color:colors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
              //todo fim
            }
        )
      ),
    );
  }

  Widget cartSubtotal(){
    return Flexible(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.only(left: 24,right: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "TOTAL",
                    color: colors.white,
                    size: TextSize.SMALL,
                  ),
                  CustomText(
                    text: r"$81.47",
                    color: colors.white,
                    size: TextSize.NORMAL,
                  ),
                  CustomText(
                    text: "Free shipping",
                    color: colors.white,
                    size: TextSize.SMALL,
                  )
                ],
              ),
            ),
            CustomActionButton(
              label: "ADD TO CART",
              iconBackgroundColor: colors.white,
              iconColor: colors.accentDark,
              icone: Icons.arrow_forward_ios,
              btnBackgroundColor: colors.accentDark,
            )
          ],
        ),
      ),
    );
  }
}