import 'package:flutter/material.dart';
import 'package:i9xpapp/blocs/CartBloc.dart';
import 'package:i9xpapp/components/IconLabel.dart';
import 'package:i9xpapp/components/ItemCategorie.dart';
import 'package:i9xpapp/components/MainTitle.dart';
import 'package:i9xpapp/components/Menu.dart';
import 'package:i9xpapp/components/ProductBox.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final cartBloc = Provider.of<CartBloc>(context);
    cartBloc.getProducts();
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(81, 92, 111, 1),
        child: Stack(children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromRGBO(43, 51, 64, 1),
                      Color.fromRGBO(43, 51, 64, 1),
                      Color.fromRGBO(43, 51, 64, 1),
                      Color.fromRGBO(43, 51, 64, 1),
                      Color.fromRGBO(43, 51, 64, 1),
                      Color.fromRGBO(43, 51, 64, 0),
                    ],
                    tileMode: TileMode.repeated,
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 21),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 15, left: 25),
                          child: Image.asset(
                            'assets/images/Grupo146.png',
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconLabel(
                              icon: Image.asset('assets/images/Messages.png'),
                              label: '5',
                            ),
                            IconLabel(
                              icon: Image.asset(
                                  'assets/images/notifications.png'),
                              label: '10',
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    MainTitle(label: 'Categories'),
                    SizedBox(height: 14),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          ItemCategorie(
                            image: Image.asset('assets/images/apparel.png'),
                            label: 'Apparel',
                          ),
                          ItemCategorie(
                            image: Image.asset('assets/images/beauty.png'),
                            label: 'Beauty',
                          ),
                          ItemCategorie(
                            image: Image.asset('assets/images/shoes.png'),
                            label: 'Shoes',
                          ),
                          ItemCategorie(
                            image: Image.asset('assets/images/seeall.png'),
                            label: 'See All',
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    MainTitle(label: 'Latest'),
                  ],
                ),
              ),
              Container(
                height: 184,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/Banner1.png',
                      ),
                      Image.asset(
                        'assets/images/Banner2.png',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  height: 140,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: cartBloc.products.length,
                    separatorBuilder: (BuildContext ctxt, index) {
                      return SizedBox(width: 24);
                    },
                    itemBuilder: (BuildContext ctxt, int index) {
                      return ProductBox(
                        image: Image.asset(
                          cartBloc.products[index]["thumbPath"],
                          height: 69,
                        ),
                        title: cartBloc.products[index]["thumbTitle"],
                        price: cartBloc.products[index]["price"],
                        index: index,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Menu(),
          )
        ]),
      ),
    );
  }
}
