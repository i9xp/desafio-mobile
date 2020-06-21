import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';

class ProductDetailLine extends StatelessWidget {

  final String label1;
  final String label2;
  final String label3;
  final String label4;

  const ProductDetailLine({Key key, @required this.label1, @required this.label2, @required this.label3, @required this.label4}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: PADDING),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(label1,),
              Text(label2),
            ]
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(label3, textAlign: TextAlign.right,),
              Text(label4, textAlign: TextAlign.right,),
            ]
          )
        ],
      ),
    );
  }
}