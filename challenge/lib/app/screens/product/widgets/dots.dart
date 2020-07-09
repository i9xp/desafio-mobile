import 'package:flutter/material.dart';

class MyDotsApp extends StatelessWidget {
  final int currentIndex;
  Color getColor(int index) {
    return index == currentIndex ? Colors.white : Colors.white38;
  }

  const MyDotsApp({Key key, this.currentIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 7,
            width: 7,
            decoration:
                BoxDecoration(color: getColor(0), shape: BoxShape.circle),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 7,
            width: 7,
            decoration:
                BoxDecoration(color: getColor(1), shape: BoxShape.circle),
          ),
          SizedBox(
            width: 8,
          ),
          Container(
            height: 7,
            width: 7,
            decoration:
                BoxDecoration(color: getColor(2), shape: BoxShape.circle),
          ),
        ],
      ),
    );
  }
}
