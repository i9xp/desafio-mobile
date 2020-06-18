import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  String text;

  SectionTitle(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: Colors.white, fontSize: 30),
    );
  }
}
