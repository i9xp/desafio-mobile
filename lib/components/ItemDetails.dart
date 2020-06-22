import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final String titleLeft;
  final String subtitleLeft;
  final String titleRight;
  final String subtitleRight;

  ItemDetails({
    Key key,
    this.titleLeft,
    this.subtitleLeft,
    this.titleRight,
    this.subtitleRight,
  }) : super(key: key);

  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 25.0, left: 25.0, top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                widget.titleLeft,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Neusa-Medium',
                  letterSpacing: 0.84,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 5),
              Text(
                widget.subtitleLeft,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Neusa-Light',
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                widget.titleRight,
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: 'Neusa-Medium',
                  letterSpacing: 0.84,
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              SizedBox(height: 5),
              Text(
                widget.subtitleRight,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Neusa-Light',
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
