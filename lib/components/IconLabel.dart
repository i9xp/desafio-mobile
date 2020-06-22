import 'package:flutter/material.dart';

class IconLabel extends StatefulWidget {
  final Image icon;
  final String label;

  IconLabel({Key key, this.icon, this.label}) : super(key: key);

  @override
  _IconLabelState createState() => _IconLabelState();
}

class _IconLabelState extends State<IconLabel> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 9, right: 9),
      child: Stack(
        children: <Widget>[
          Container(
            width: 45,
            height: 45,
            child: widget.icon,
          ),
          Positioned(
            bottom: 6,
            left: 0,
            child: Container(
              height: 21,
              width: 21,
              decoration: BoxDecoration(
                color: Color.fromRGBO(249, 199, 5, 1),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(
                  widget.label,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
