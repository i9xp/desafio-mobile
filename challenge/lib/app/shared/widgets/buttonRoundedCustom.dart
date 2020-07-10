import 'package:flutter/material.dart';

Widget buttonRounded(String title, Color colorTitle, Color color, String icon,
    [Function onTap]) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      margin: EdgeInsets.all(15.0),
      width: 165,
      height: 46,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60.0),
          shape: BoxShape.rectangle,
          color: color),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, color: colorTitle),
          ),
          SizedBox(
            width: 10,
          ),
          Image.asset(
            icon,
            width: 30,
            height: 30,
          )
        ],
      ),
    ),
  );
}
