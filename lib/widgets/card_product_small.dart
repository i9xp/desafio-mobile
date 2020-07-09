import 'package:flutter/material.dart';

class CardProductSmall extends StatelessWidget {
  int productId;
  Widget illustration;
  String productName;
  double productValue;
  Function onTap;

  CardProductSmall({
    this.productId,
    this.illustration,
    this.productName,
    this.productValue,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 135,
        decoration: new BoxDecoration(
          color: Colors.white,
          borderRadius: new BorderRadius.all(
            const Radius.circular(10.0),
          ),
        ),
        width: (MediaQuery.of(context).size.width - 72) / 3,
        padding: EdgeInsets.all(11),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                width: ((MediaQuery.of(context).size.width - 72) / 3) - 26,
                height: ((MediaQuery.of(context).size.width - 72) / 3) - 26,
                child: illustration),
            Container(
              width: ((MediaQuery.of(context).size.width - 72) / 3) - 24,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    productName,
                    style: TextStyle(
                        color: Color(0xFF515C6F), fontWeight: FontWeight.w300),
                  ),
                  Text(
                    '\$${productValue.toStringAsFixed(2)}',
                    style: TextStyle(
                        color: Color(0xFF515C6F), fontWeight: FontWeight.w700),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
