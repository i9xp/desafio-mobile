import 'package:flutter/material.dart';

class CarouselCard extends StatefulWidget {
  String url;

  CarouselCard(this.url);

  @override
  _CarouselCardState createState() => _CarouselCardState();
}

class _CarouselCardState extends State<CarouselCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15),
        height: 184,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            widget.url,
            fit: BoxFit.fill,
          ),
        ));
  }
}
