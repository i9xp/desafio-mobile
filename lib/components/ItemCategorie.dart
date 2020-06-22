import 'package:flutter/material.dart';

class ItemCategorie extends StatefulWidget {
  final String label;
  final Image image;
  ItemCategorie({Key key, this.label, this.image}) : super(key: key);

  @override
  _ItemCategorieState createState() => _ItemCategorieState();
}

class _ItemCategorieState extends State<ItemCategorie> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        widget.image,
        SizedBox(height: 9),
        Text(
          widget.label,
          style: TextStyle(
            fontFamily: 'Neusa',
            fontSize: 15,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
