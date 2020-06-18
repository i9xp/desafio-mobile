import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  String imgUrl;
  String label;
  double price;

  ProductCard({this.imgUrl, this.label, this.price = 0.00});

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.27,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0),
        child: Column(
          children: [
            Container(
              child: Image.asset(
                widget.imgUrl,
                height: MediaQuery.of(context).size.height * 0.1,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                widget.label,
                style: TextStyle(fontSize: 14),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.002,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                "\$${widget.price.toStringAsFixed(2)}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
              ),
            )
          ],
        ),
      ),
    );
  }
}
