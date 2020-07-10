import 'package:flutter/material.dart';

class ButtonI9XP extends StatelessWidget {
  Function onTap;
  String title;
  bool primaryColor;
  Widget illustration;

  ButtonI9XP(
      {@required this.onTap,
      @required this.title,
      this.primaryColor = true,
      this.illustration});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: (MediaQuery.of(context).size.width - 45) / 2,
        height: 46,
        decoration: BoxDecoration(
          color: primaryColor ? Color(0xFFF9C705) : Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(23),
          ),
          border: Border.all(width: 0, style: BorderStyle.none),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 15,
              left: 29,
              child: Container(
                child: Text(
                  title,
                  style: TextStyle(
                      color: Color(0xFF727C8E), fontWeight: FontWeight.w700),
                ),
              ),
            ),
            Positioned(
              right: 9,
              top: 9,
              child: Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  color: !primaryColor ? Color(0xFFF9C705) : Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(14),
                  ),
                  border: Border.all(width: 0, style: BorderStyle.none),
                ),
                child: (illustration != null
                    ? illustration
                    : Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFF9C705),
                        size: 16,
                      )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
