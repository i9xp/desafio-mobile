import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testeapp/src/bloc/CarrinhoBloc.dart';
import 'package:testeapp/src/helpers/navigation/nav_slide_from_bottom.dart';
import 'package:testeapp/src/models/ProductModel.dart';
import 'package:testeapp/src/pages/cart/CartPage.dart';
import 'package:testeapp/src/pages/detail/ProductDetailWidget.dart';
import 'package:testeapp/src/values/colors.dart' as colors;
import 'package:testeapp/src/values/dimens.dart' as dimens;
import 'package:testeapp/src/widgets/Text.dart';

class ProductDetail extends StatefulWidget {

  final ProductModel productModel;

  const ProductDetail({Key key, this.productModel}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> with ProductDetailWidget  {

  CarrinhoBloc carrinhoBloc;

  @override
  void didChangeDependencies() {
    carrinhoBloc = Provider.of<CarrinhoBloc>(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.gray,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colors.gray,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back_ios,color: colors.accentDark,),
        ),
        centerTitle: true,
        title: Column(
          children: [
            CustomText(
              text: "${widget.productModel.name}",
            ),
            CustomText(
              text: r"$"+"${widget.productModel.value}",
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => navigateToCart(context: context),
            icon: Icon(Icons.add_shopping_cart,color: colors.white,),
          )
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 48,),
              productDetailImage(
                assets: widget.productModel.asset
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top:32.0
                ),
                child: rowWithLabels(),
              ),
              SizedBox(height: 48,),
              productInfoWidget(
                context: context
              ),
              productInfoWidget(
                  context: context
              ),
              productInfoWidget(
                  context: context
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: customDetailBottomNav(
        context: context,
        carrinhoBloc: carrinhoBloc,
        productModel: widget.productModel
      ),

    );
  }

  void navigateToCart({BuildContext context}){
    Navigator.push(context, NavSlideFromBottom(
      page: CartPage()
    ));
  }
}
