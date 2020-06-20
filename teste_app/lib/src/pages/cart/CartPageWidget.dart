import 'package:flutter/material.dart';
import 'package:testeapp/src/bloc/CarrinhoBloc.dart';
import 'package:testeapp/src/helpers/navigation/nav_fade.dart';
import 'package:testeapp/src/models/CarrinhoItemModel.dart';
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
        child: StreamBuilder<List<CarrinhoItemModel>>(
          initialData: [],
          stream: carrinhoBloc.carrinho,
          builder: (context, snapshot) {
            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context,index){ 
                final obj = snapshot.data[index];
                return CarrinhoListItem(
                  item: obj,
                );
              }
            );
          }
        )
      ),
    );
  }

  Widget cartSubtotal({BuildContext context,CarrinhoBloc carrinhoBloc}){
    return StreamBuilder<double>(
      stream: carrinhoBloc.total,
      initialData: 0.0,
      builder: (context, snapshot) {
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
                        text: r"$"+ "${snapshot.data}",
                        color: colors.white,
                        size: TextSize.NORMAL,
                      ),
                      CustomText(
                        text: snapshot.data > 99.00 ? "Free shipping" : "Shipping tax: 9.99",
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
    );
  }

  void navigateToCheckout({BuildContext context}){
    Navigator.push(context, NavFade(
      page: CheckoutPage()
    ));
  }
}