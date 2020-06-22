import 'package:flutter/material.dart';
import 'package:i9xpapp/blocs/CartBloc.dart';
import 'package:i9xpapp/blocs/PagesBloc.dart';
import 'package:i9xpapp/components/IconLabel.dart';
import 'package:i9xpapp/components/ItemDetails.dart';
import 'package:i9xpapp/components/LabelDetails.dart';
import 'package:i9xpapp/components/RoundedButton.dart';
import 'package:provider/provider.dart';

import 'Cart.dart';

class Details extends StatefulWidget {
  final index;

  Details({Key key, this.index}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String _totalItems = '0';

  @override
  Widget build(BuildContext context) {
    final cartBloc = Provider.of<CartBloc>(context);
    final pagesBloc = Provider.of<PagesBloc>(context);
    cartBloc.getItems().then((value) => setState(() {
          _totalItems = value.toString();
        }));
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(81, 92, 111, 1),
            child: Column(
              children: <Widget>[
                SizedBox(height: 21),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(
                          Icons.chevron_left,
                          color: Color.fromRGBO(249, 199, 5, 1),
                          size: 36,
                        )),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          cartBloc.products[widget.index]["title"],
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Neusa-Bold',
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: <Widget>[
                            Text(
                              '\$${cartBloc.products[widget.index]["price"].toString()}',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Neusa-Bold',
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(width: 6),
                            Container(
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(249, 199, 5, 1),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      size: 12,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      '4.9',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Neusa-Bold',
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          pagesBloc.setIndex(3);
                        });
                        cartBloc.getTotal();
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cart(),
                          ),
                        );
                      },
                      child: IconLabel(
                        icon: Image.asset('assets/images/Cart.png'),
                        label: _totalItems,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                      SizedBox(width: 4.5),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(width: 4.5),
                      Container(
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    cartBloc.products[widget.index]["imageDetailsPath"],
                    height: 206,
                  ),
                ),
                SizedBox(height: 28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    LabelDetails(
                      label: 'Product',
                      active: false,
                    ),
                    LabelDetails(
                      label: 'Details',
                      active: true,
                    ),
                    LabelDetails(
                      label: 'Reviews',
                      active: false,
                    ),
                  ],
                ),
                ItemDetails(
                  titleLeft: 'BRAND',
                  subtitleLeft: 'Lily’s Ankle Boots',
                  titleRight: 'SKU',
                  subtitleRight: '0590458902809',
                ),
                ItemDetails(
                  titleLeft: 'CONDITION',
                  subtitleLeft: 'Brand New, With Box',
                  titleRight: 'MATERIAL',
                  subtitleRight: 'Faux Sued, Velvet',
                ),
                ItemDetails(
                  titleLeft: 'CATEGORY',
                  subtitleLeft: 'Women Shoes',
                  titleRight: 'FITTING',
                  subtitleRight: 'True To Size',
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 78,
              color: Color.fromRGBO(46, 55, 70, 1),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundedButton(
                      label: 'SHARE THIS',
                      background: Colors.white,
                      icon: Icons.arrow_upward,
                      iconBackground: Color.fromRGBO(249, 199, 5, 1),
                      iconColor: Colors.white,
                    ),
                    RoundedButton(
                      label: 'ADD TO CART',
                      background: Color.fromRGBO(249, 199, 5, 1),
                      icon: Icons.chevron_right,
                      iconBackground: Colors.white,
                      iconColor: Color.fromRGBO(249, 199, 5, 1),
                      action: () {
                        if (cartBloc.cart.length > 0) {
                          if (!cartBloc.cart
                              .contains(cartBloc.products[widget.index]))
                            cartBloc.cart.add(cartBloc.products[widget.index]);
                          cartBloc.setQnty(
                              cartBloc.products[widget.index]["title"], 1);
                        } else {
                          cartBloc.cart.add(cartBloc.products[widget.index]);
                          cartBloc.setQnty(
                              cartBloc.products[widget.index]["title"], 1);
                        }
                        setState(() {
                          pagesBloc.setIndex(3);
                        });
                        cartBloc.getTotal();
                        Navigator.of(context).pop();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Cart(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
