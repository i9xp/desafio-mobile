import 'package:flutter/material.dart';

class RoundedButton extends StatefulWidget {
  final String label;
  final Color background;
  final IconData icon;
  final Color iconBackground;
  final Color iconColor;
  final action;

  RoundedButton(
      {Key key,
      this.label,
      this.background,
      this.icon,
      this.iconColor,
      this.iconBackground,
      this.action})
      : super(key: key);

  @override
  _RoundedButtonState createState() => _RoundedButtonState();
}

class _RoundedButtonState extends State<RoundedButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.action,
      child: Container(
        height: 46,
        width: 165,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: widget.background,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 29),
              child: Text(
                widget.label,
                style: TextStyle(
                  color: Color.fromRGBO(81, 92, 111, 1),
                  fontSize: 12,
                  fontFamily: 'Neusa-Bold',
                  letterSpacing: 0.72,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8),
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: widget.iconBackground,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  widget.icon,
                  color: widget.iconColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
