import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketplace/features/cart/bloc/cart_bloc.dart';
import 'package:marketplace/pages/order.dart';
import 'package:marketplace/widgets/app_bar.dart';
import 'package:marketplace/widgets/button_i9xp.dart';

class CartPage extends StatefulWidget {
  final scaffoldKey;

  CartPage({
    this.scaffoldKey,
  });

  @override
  State<StatefulWidget> createState() => _CartState();
}

class _CartState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: BlocBuilder<CartBloc, CartState>(
          // ignore: missing_return
          builder: (context, state) {
        if (state is CartStateFailure) {
          return Center(
            child: Text(state.error),
          );
        } else if (state is CartStateLoaded) {
          if (true) {
            //(state.items != null && state.items.length > 0) {
            double totalOrder = 0;

            return Container(
              child: Column(
                children: <Widget>[
                  AppBarI9XP(
                    showLogo: false,
                  ),
                  Container(
                    alignment: Alignment(-1, 0),
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Cart',
                      style: Theme.of(context).textTheme.title,
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: MediaQuery.of(context).size.width - 40,
                    child: Divider(
                      height: 1,
                      color: Color(0xFF727C8E),
                    ),
                  ),
                  Container(
                    height: 86,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                      height: 78.0,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width:
                                  (MediaQuery.of(context).size.width - 45) / 2,
                              height: 51,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'TOTAL',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Color.fromARGB(128, 255, 255, 255),
                                    ),
                                  ),
                                  Text(
                                    '\$${totalOrder.toStringAsFixed(2)}',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Free Domestic Shipping',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ButtonI9XP(
                              title: 'CHECKOUT',
                              illustration: Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xFFF9C705),
                                size: 16,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OrderPage()),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          } else {
            return Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    AppBarI9XP(
                      showLogo: false,
                    ),
                    Container(
                      alignment: Alignment(-1, 0),
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Text(
                        'Cart',
                        style: Theme.of(context).textTheme.title,
                      ),
                    ),
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text('Cart is empty.'),
                      ],
                    )),
                  ],
                ));
          }
        } else {
          return Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Loading...'),
              SizedBox(
                height: 20,
              ),
              CircularProgressIndicator()
            ],
          ));
        }
      })),
    );
  }
}
