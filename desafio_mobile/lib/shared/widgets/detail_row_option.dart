import 'package:desafio_mobile/shared/utils/colors_util.dart';
import 'package:flutter/material.dart';

class DetailsRowOption extends StatefulWidget {
  int select;
  Function onTap;

  DetailsRowOption({this.select, this.onTap});

  @override
  _DetailsRowOptionState createState() => _DetailsRowOptionState();
}

class _DetailsRowOptionState extends State<DetailsRowOption> {
  ColorsUtil colorsUtil = ColorsUtil();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: widget.select == 0
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: colorsUtil.seeAllIcon)
                : BoxDecoration(),
            child: Text(
              "Product",
              style: TextStyle(
                  color:
                      widget.select == 0 ? colorsUtil.bgColorHomeBody : Colors.white,
                  fontSize: 17),
            ),
          ),
          onTap: () {
            widget.onTap(0);
          },
        ),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: widget.select == 1
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: colorsUtil.seeAllIcon)
                : BoxDecoration(),
            child: Text(
              "Details",
              style: TextStyle(
                  color:
                      widget.select == 1 ? colorsUtil.bgColorHomeBody : Colors.white,
                  fontSize: 17),
            ),
          ),
          onTap: () {
            widget.onTap(1);
          },
        ),
        GestureDetector(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: widget.select == 2
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: colorsUtil.seeAllIcon)
                : BoxDecoration(),
            child: Text(
              "Reviews",
              style: TextStyle(
                  color:
                      widget.select == 2 ? colorsUtil.bgColorHomeBody : Colors.white,
                  fontSize: 17),
            ),
          ),
          onTap: () {
            widget.onTap(2);
          },
        ),
      ],
    );
  }
}
