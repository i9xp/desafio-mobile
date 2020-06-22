import 'package:flutter/material.dart';
import 'package:i9xpapp/pages/Details.dart';

class ProductBox extends StatefulWidget {
  final Image image;
  final String title;
  final double price;
  final index;

  ProductBox({
    Key key,
    this.image,
    this.title,
    this.price,
    this.index,
  }) : super(key: key);

  @override
  _ProductBoxState createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(
              index: widget.index,
            ),
          ),
        );
      },
      child: Container(
        height: 135,
        width: 101,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(231, 234, 240, 1),
              blurRadius: 15,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 12,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              widget.image,
              SizedBox(height: 12),
              Text(
                widget.title,
                style: TextStyle(
                  fontFamily: 'Neusa-Light',
                ),
              ),
              Text(
                "\$${widget.price.toString()}",
                style: TextStyle(
                  fontFamily: 'Neusa-Bold',
                  fontSize: 10,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
