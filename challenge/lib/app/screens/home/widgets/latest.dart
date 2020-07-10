import 'package:flutter/material.dart';

class LatestWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            'Latest',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
          ),
        ),
        Expanded(
          child: Image.asset(
            'assets/img/banner.png',
          ),
        ),
      ],
    );
  }
}
