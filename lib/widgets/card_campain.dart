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
        child: Container(
          child: illustration,
        ),
      ),
    );
  }
}
