import 'package:flutter/material.dart';

class MainTitle extends StatefulWidget {
  final String label;

  MainTitle({Key key, this.label}) : super(key: key);

  @override
  _MainTitleState createState() => _MainTitleState();
}

class _MainTitleState extends State<MainTitle> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
            left: 25,
          ),
          child: Text(
            widget.label,
            style: TextStyle(
              fontSize: 30,
              fontFamily: 'Neusa-Bold',
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
