import 'package:flutter/material.dart';

class RowDetails extends StatelessWidget {
  String left;
  String right;
  bool bold;

  RowDetails({this.left, this.right, this.bold = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            left,
            style: TextStyle(
                fontWeight: bold ? FontWeight.w500 : FontWeight.w300,
                color: bold ? Color.fromRGBO(255, 255, 255, 0.5) : Colors.white,
                fontSize: bold ? 14 : 16),
          ),
          Text(
            right,
            style: TextStyle(
                fontWeight: bold ? FontWeight.w500 : FontWeight.w300,
                color: bold ? Color.fromRGBO(255, 255, 255, 0.5) : Colors.white,
                fontSize: bold ? 14 : 16),
          ),
        ],
      ),
    );
  }
}
