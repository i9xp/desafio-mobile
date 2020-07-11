import 'package:flutter/material.dart';

class CartItemDivider extends StatelessWidget {
  const CartItemDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.white,
      indent: 100,
      height: 40,
      thickness: 0.2,
    );
  }
}
