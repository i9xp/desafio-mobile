import 'package:flutter/material.dart';

class CardCampain extends StatelessWidget {
  Widget illustration;
  Function onTap;

  CardCampain({this.illustration, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * (265 / 406),
        child: Container(
          child: illustration,
        ),
      ),
    );
  }
}
