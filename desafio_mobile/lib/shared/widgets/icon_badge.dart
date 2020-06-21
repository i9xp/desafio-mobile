import 'package:flutter/material.dart';

class IconBadge extends StatefulWidget {
  IconData icon;
  String label;
  String imgUrl;

  IconBadge({this.icon, this.label = "0", this.imgUrl});

  @override
  _IconBadgeState createState() => _IconBadgeState();
}

class _IconBadgeState extends State<IconBadge> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Positioned(
          right: 3,
          bottom: 6,
          child: widget.icon != null ? Icon(widget.icon) : Image.asset(widget.imgUrl, height: 20, width: 20,),
        ),
        Positioned(
          left: 0,
          bottom: 4,
            child: Container(
              height: 15,
              width: 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            color: Color(0xFFF9C705),
          ),
          child: Center(child: Text(widget.label, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),)),
        ))
      ],
    ));
  }
}
