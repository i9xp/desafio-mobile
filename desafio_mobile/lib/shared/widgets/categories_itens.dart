import 'package:flutter/material.dart';

import '../utils/colors_util.dart';

class CategoriesItens extends StatefulWidget {
  String label;
  String imgUrl;
  List<Color> colors;
  IconData icon;

  CategoriesItens(
      {@required this.label, this.imgUrl, @required this.colors, this.icon});

  @override
  _CategoriesItensState createState() => _CategoriesItensState();
}

class _CategoriesItensState extends State<CategoriesItens> {
  ColorsUtil colorsUtil = ColorsUtil();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            gradient: LinearGradient(
              colors: widget.colors,
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: widget.imgUrl == null
                ? Icon(
                    widget.icon,
                    color: colorsUtil.seeAllIcon,
                  )
                : Image.asset(
                    widget.imgUrl,
                    width: 37.5,
                    height: 37.5,
                  ),
          ),
        ),
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
