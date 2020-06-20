import 'package:flutter/material.dart';
import 'package:testeapp/src/bloc/CarrinhoBloc.dart';
import 'package:testeapp/src/models/CarrinhoItemModel.dart';

import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;
import 'package:testeapp/src/widgets/CustomQuantityButton.dart';
import 'package:testeapp/src/widgets/Text.dart';

class CarrinhoListItem extends StatelessWidget {

  final CarrinhoItemModel item;
  final CarrinhoBloc carrinhoBloc;

  const CarrinhoListItem({Key key,this.carrinhoBloc, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    item.produto.asset,
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
                    text: item.produto.name,
                  ),
                  CustomText(
                    text: item.produto.description,
                  ),
                  SizedBox(height: 16,),
                  CustomText(
                    text: r"$" + "${item.produto.value}",
                  ),
                  SizedBox(height: 8,),
                  Row(
                    children: [
                      CustomQuantityButton(
                        onTap: null,
                        icone: Icons.remove,
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(
                          horizontal: 16
                        ),
                        child: CustomText(
                          text: "1",
                        ),
                      ),
                      CustomQuantityButton(
                        onTap: null,
                        icone: Icons.add,
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
  }
}