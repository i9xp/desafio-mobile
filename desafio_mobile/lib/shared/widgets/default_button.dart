import 'package:desafio_mobile/shared/utils/colors_util.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  String imgUrl;
  String label;
  Color color;

  DefaultButton({this.imgUrl, this.label, this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    ColorsUtil colors = ColorsUtil();
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(40), color: color),
      width: MediaQuery.of(context).size.width * 0.43,
      height: MediaQuery.of(context).size.height * 0.07,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            child: Text(
              label,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: colors.bgColorHomeBody),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 13),
            child: Image.asset(
              imgUrl,
              width: 30,
              height: 30,
            ),
          )
        ],
      ),
    );
  }
}
