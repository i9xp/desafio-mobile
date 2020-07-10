import 'package:challenge/app/screens/home/widgets/appBar.dart';
import 'package:challenge/app/screens/home/widgets/categories.dart';
import 'package:challenge/app/screens/home/widgets/itens.dart';
import 'package:challenge/app/screens/home/widgets/latest.dart';
import 'package:flutter/material.dart';

class ContentHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _height = MediaQuery.of(context).size.height;
    return Container(
      height: _height,
      width: _width,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xff2B3340), Color(0xff515C6F)])),
      child: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            top: 10,
            right: 0,
            child: AppBarCustom(),
          ),
          Positioned(
            top: 60,
            height: _height * 0.20,
            left: 0,
            right: 0,
            child: CategoriesWidget(),
          ),
          Positioned(
            top: 210,
            left: 0,
            height: _height * .36,
            right: 0,
            child: LatestWidget(),
          ),
          Positioned(
            height: _height * .22,
            left: 20,
            right: 0,
            bottom: 10 + MediaQuery.of(context).padding.bottom,
            child: ItensWidget(),
          ),
        ],
      ),
    );
  }
}
