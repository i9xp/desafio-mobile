import 'package:challenge/app/screens/product/widgets/appBar.dart';
import 'package:challenge/app/screens/product/widgets/bottomNavigation.dart';
import 'package:challenge/app/screens/product/widgets/detailsProduct.dart';
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
            ],
          ),
        ),
        bottomNavigationBar: bottomNavigationProduct(),
      ),
    );
  }
}
