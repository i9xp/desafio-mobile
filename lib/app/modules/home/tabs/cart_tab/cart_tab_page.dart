import 'package:desafio_mobile/app/app_controller.dart';
import 'package:desafio_mobile/app/models/product_model.dart';
import 'package:desafio_mobile/app/modules/home/tabs/cart_tab/cart_tab_controller.dart';
import 'package:desafio_mobile/app/modules/home/tabs/cart_tab/cart_tab_module.dart';
import 'package:desafio_mobile/app/modules/home/tabs/cart_tab/completed_order/completed_order.dart';
import 'package:desafio_mobile/app/shared/components/basic_structure/basic_structure_widget.dart';
import 'package:desafio_mobile/app/shared/components/cart_tile/cart_tile_widget.dart';
import 'package:desafio_mobile/app/shared/components/default_appbar/default_appbar_widget.dart';
import 'package:desafio_mobile/app/shared/components/default_bottombar/default_bottombar_widget.dart';
import 'package:desafio_mobile/app/shared/components/default_icon_button/default_icon_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class CartTabPage extends StatefulWidget {
  final PageController pageController;
  final appController;

  const CartTabPage(
      {Key key, @required this.pageController, this.appController})
      : assert(pageController != null),
        super(key: key);

  @override
  _CartTabPageState createState() => _CartTabPageState();
}

class _CartTabPageState extends State<CartTabPage> {
  @override
  void initState() {
    print(widget.appController.list.isEmpty);
    widget.appController.takeTotal(widget.appController.list);
    print(widget.appController.list.isEmpty);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: DefaultBottombarWidget(
          pageController: widget.pageController,
        ),
        appBar: DefaultAppbarWidget(
          titleComponent: Container(),
        ),
        body: BasicStructureWidget(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            child: Observer(builder: (_) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text("Cart",
                            style: Theme.of(context).textTheme.headline1),
                        SizedBox(height: 10),
                        widget.appController.list.isEmpty
                            ? Center(
                                child: Text(
                                "Your cart is empty",
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(fontSize: 26),
                              ))
                            : Flexible(
                                fit: FlexFit.loose,
                                child: ListView.builder(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 5),
                                    shrinkWrap: true,
                                    itemCount: widget.appController.list.length,
                                    physics: NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) {
                                      return CartTileWidget(
                                        product:
                                            widget.appController.list[index],
                                      );
                                    }))
                      ]),
                  Observer(builder: (_) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Divider(
                          color: Theme.of(context).accentColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Total",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(
                                            color:
                                                Theme.of(context).accentColor,
                                            fontSize: 26,
                                            fontWeight: FontWeight.w700)),
                                SizedBox(height: 10),
                                Text(
                                    "R\$ ${widget.appController.total.toStringAsFixed(2)}",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1
                                        .copyWith(
                                            color:
                                                Theme.of(context).accentColor,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w700)),
                              ],
                            ),
                            DefaultIconButtonWidget(
                              text: "Checkout",
                              onTap: () {
                                widget.appController.list.clear();
                                widget.appController.removeAll();
                                widget.appController.total = 0.0;

                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            CompletedOrder()));
                              },
                              textColor: Theme.of(context).primaryColor,
                              backgroundColor: Theme.of(context).buttonColor,
                              width: MediaQuery.of(context).size.width / 2 - 40,
                              icon: Icons.arrow_forward_ios,
                              iconColor: Theme.of(context).buttonColor,
                              fontSize: 18,
                              iconBackgroundColor:
                                  Theme.of(context).accentColor,
                              iconSize: 22,
                            )
                          ],
                        ),
                      ],
                    );
                  })
                ],
              );
            })));
  }
}
