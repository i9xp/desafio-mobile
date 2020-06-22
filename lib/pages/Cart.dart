import 'package:flutter/material.dart';
import 'package:i9xpapp/components/IconLabel.dart';
import 'package:i9xpapp/components/ListItems.dart';
import 'package:i9xpapp/components/Menu.dart';
import 'package:i9xpapp/components/RoundedButton.dart';
import 'package:i9xpapp/components/MainTitle.dart';
import 'package:i9xpapp/components/TotalCart.dart';
import 'package:i9xpapp/pages/Finished.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color.fromRGBO(81, 92, 111, 1),
            child: Column(
              children: <Widget>[
                SizedBox(height: 21),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    IconLabel(
                      icon: Image.asset('assets/images/Messages.png'),
                      label: '5',
                    ),
                    IconLabel(
                      icon: Image.asset('assets/images/notifications.png'),
                      label: '10',
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    MainTitle(
                      label: 'Cart',
                    ),
                    Container(
                      height: 402,
                      child: ListItems(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 25, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          TotalCart(),
                          Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: RoundedButton(
                              action: () {
                                Navigator.of(context).pop();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Finished(),
                                  ),
                                );
                              },
                              label: 'CHECKOUT',
                              background: Color.fromRGBO(249, 199, 5, 1),
                              icon: Icons.chevron_right,
                              iconBackground: Colors.white,
                              iconColor: Color.fromRGBO(249, 199, 5, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Menu(),
          ),
        ],
      ),
    );
  }
}
