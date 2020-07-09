import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget bottomNavigationProduct() {
  return Container(
    height: 78,
    color: Color(0xff2E3746),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(15.0),
          width: 165,
          height: 46,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.0),
              shape: BoxShape.rectangle,
              color: Colors.white),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Text(
                'SHARE THIS',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff727C8E)),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.all(15.0),
          width: 165,
          height: 46,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.0),
              shape: BoxShape.rectangle,
              color: Color(0xffF9C705)),
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Text(
                'ADD TO CART',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xff727C8E)),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
