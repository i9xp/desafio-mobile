import 'package:flutter/material.dart';

import '../utils/colors_util.dart';

class CategoriesItens extends StatefulWidget {
  String label;
  String imgUrl;

  CategoriesItens(
      {@required this.label, @required this.imgUrl});

  @override
  _CategoriesItensState createState() => _CategoriesItensState();
}

class _CategoriesItensState extends State<CategoriesItens> {
  ColorsUtil colorsUtil = ColorsUtil();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(widget.imgUrl, height: 65, width: 65,),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.015,
        ),
        Text(
          widget.label,
          style: TextStyle(fontSize: 15, color: Colors.white),
        )
      ],
    );
  }
}
