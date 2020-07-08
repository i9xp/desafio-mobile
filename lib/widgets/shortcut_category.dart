import 'package:flutter/material.dart';

class ShotcutCategory extends StatelessWidget {
  String title;
  Widget illustration;
  Function onTap;

  ShotcutCategory({this.title, this.illustration, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: ((MediaQuery.of(context).size.width - 90) / 4),
        height: ((MediaQuery.of(context).size.width - 90) / 4) + 24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: illustration,
            ),
            Text(title),
          ],
        ),
      ),
    );
  }
}
