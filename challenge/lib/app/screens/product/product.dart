import 'package:challenge/app/screens/product/widgets/appBar.dart';
import 'package:challenge/app/screens/product/widgets/bottomNavigation.dart';
import 'package:challenge/app/screens/product/widgets/detailsProduct.dart';
import 'package:challenge/app/screens/product/widgets/infoProduct.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff515C6F),
        body: Container(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(child: AppBarCustomProduct()),
              Positioned(top: 70, child: DetailsProduct()),
              Positioned(
                bottom: 30,
                left: 20,
                child: Column(
                  children: <Widget>[
                    InfoProductWidget(
                      title1: 'BRAND',
                      subtitle1: 'Lily’s Ankle Boots',
                      title2: 'SKU',
                      subtitle2: '0590458902809',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InfoProductWidget(
                      title1: 'CONDITION',
                      subtitle1: 'Brand New, With Box',
                      title2: 'MATERIAL',
                      subtitle2: 'Faux Sued, Velvet',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    InfoProductWidget(
                      title1: 'CATEGORY',
                      subtitle1: 'Women Shoes',
                      title2: 'FITTING',
                      subtitle2: 'True To Size',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: bottomNavigationProduct(),
      ),
    );
  }
}
