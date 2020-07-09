import 'package:challenge/app/screens/product/widgets/dots.dart';
import 'package:flutter/material.dart';

class DetailsProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height / 2.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          MyDotsApp(),
          Image.asset(
            'assets/img/item.png',
          ),
        ],
      ),
    );
  }
}
