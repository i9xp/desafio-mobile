import 'package:flutter/material.dart';
import 'package:testeapp/src/bloc/CarrinhoBloc.dart';
import 'package:testeapp/src/helpers/navigation/nav_fade.dart';
import 'package:testeapp/src/pages/checkout/CheckoutPage.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;
import 'package:testeapp/src/widgets/CustomActionButton.dart';
import 'package:testeapp/src/widgets/Text.dart';
import 'package:testeapp/src/widgets/listitem/CarrinhoListItem.dart';

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

  Widget cartListItens({CarrinhoBloc carrinhoBloc}){
    return Flexible(
      flex: 10,
      child: Padding(
        padding: EdgeInsets.only(left: 24),
        child: ListView.builder(
            itemBuilder: (context,index){  
              return CarrinhoListItem();
            }
        )
      ),
    );
  }

  Widget cartSubtotal({BuildContext context}){
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
              label: "CHECKOUT",
              iconBackgroundColor: colors.white,
              iconColor: colors.accentDark,
              icone: Icons.arrow_forward_ios,
              btnBackgroundColor: colors.accentDark,
              onPressed: () => navigateToCheckout(context: context),
            )
          ],
        ),
      ),
    );
  }

  void navigateToCheckout({BuildContext context}){
    Navigator.push(context, NavFade(
      page: CheckoutPage()
    ));
  }
}