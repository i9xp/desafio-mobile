import 'package:desafio_mobile/app/models/product_model.dart';
import 'package:desafio_mobile/app/modules/home/tabs/cart_tab/cart_tab_module.dart';
import 'package:desafio_mobile/app/shared/components/default_icon_button/default_icon_button_widget.dart';
import 'package:flutter/material.dart';

class ProductBottombarWidget extends StatelessWidget {
  final PageController pageController;
  final appController;
  final ProductModel productModel;

  const ProductBottombarWidget(
      {Key key, this.pageController, this.appController, this.productModel})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: 90,
        color: Theme.of(context).primaryColorDark,
        padding: const EdgeInsets.fromLTRB(25, 10, 10, 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DefaultIconButtonWidget(
              text: "SHARE THIS",
              onTap: () {},
              width: MediaQuery.of(context).size.width / 2 - 40,
              icon: Icons.arrow_upward,
              iconColor: Theme.of(context).accentColor,
              fontSize: 18,
              textColor: Theme.of(context).primaryColor,
              backgroundColor: Theme.of(context).accentColor,
              iconBackgroundColor: Theme.of(context).buttonColor,
              iconSize: 22,
            ),
            DefaultIconButtonWidget(
              text: "CHECKOUT",
              onTap: () async {
                await appController.add(productModel);
                pageController.jumpToPage(2);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CartTabModule(
                              appController: appController,
                              pageController: pageController,
                            )));
              },
              width: MediaQuery.of(context).size.width / 2 - 40,
              icon: Icons.arrow_forward_ios,
              iconColor: Theme.of(context).buttonColor,
              fontSize: 18,
              textColor: Theme.of(context).primaryColor,
              backgroundColor: Theme.of(context).buttonColor,
              iconBackgroundColor: Theme.of(context).accentColor,
              iconSize: 22,
            )
          ],
        ),
      );
    });
  }
}
