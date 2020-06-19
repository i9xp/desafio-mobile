import 'package:flutter/material.dart';
import 'package:testeapp/src/values/colors.dart' as colors;

class ProductListIte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 101,
      height: 145,
      decoration: BoxDecoration(
          color: colors.accentDark,
          borderRadius: BorderRadius.all(Radius.circular(24))
      ),
    );
  }
}
