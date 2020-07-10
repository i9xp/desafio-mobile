import 'package:flutter/material.dart';

class RowDetail extends StatelessWidget {
  String leftTitle;
  String leftValue;
  String rightTitle;
  String rightValue;

  RowDetail({this.leftTitle, this.leftValue, this.rightTitle, this.rightValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  leftTitle,
                  style: TextStyle(
                      color: Color.fromARGB(128, 255, 255, 255),
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  leftValue,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text(
                  rightTitle,
                  style: TextStyle(color: Color.fromARGB(128, 255, 255, 255)),
                ),
                Text(
                  rightValue,
                  style: TextStyle(
                      color: Color.fromARGB(128, 255, 255, 255),
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
