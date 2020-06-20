import 'package:flutter/material.dart';
import 'package:testeapp/src/helpers/navigation/nav_slide_from_right.dart';
import 'package:testeapp/src/models/ProductModel.dart';
import 'package:testeapp/src/pages/detail/ProductDetail.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/widgets/Text.dart';

class ProductListItem extends StatelessWidget {

  final ProductModel productModel;

  const ProductListItem({Key key,this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:() => navigateToDetails(context: context,productModel: productModel),
      child: Container(
        width: 111,
        height: 145,
        decoration: BoxDecoration(
            color: colors.white,
            borderRadius: BorderRadius.all(Radius.circular(24))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 8,
                left: 8,
                right: 8
              ),
              child: Container(
                width: 111,
                height: 95,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          productModel.asset,
                        )
                    ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(24),
                      topLeft: Radius.circular(24)
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: CustomText(
                text: productModel.name,
                color: colors.grayDark,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: CustomText(
                size: TextSize.SMALL,
                color: colors.grayDark,
                text: r"R$"+ "${productModel.value}",
              ),
            ),

          ],
        ),
      ),
    );
  }

  void navigateToDetails({BuildContext context,ProductModel productModel}){
    Navigator.push(context, NavSlideFromRight(
      page: ProductDetail(
        productModel: productModel,
      )
    ));
  }
}
