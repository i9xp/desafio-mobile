import 'package:flutter/material.dart';

class ItemMenu extends StatefulWidget {
  final Widget icon;
  final String label;
  final bool active;

  ItemMenu({
    Key key,
    this.icon,
    this.label,
    this.active,
  }) : super(key: key);

  @override
  _ItemMenuState createState() => _ItemMenuState();
}

class _ItemMenuState extends State<ItemMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(padding: EdgeInsets.only(bottom: 7), child: widget.icon),
          Text(
            widget.label,
            style: TextStyle(
                color: widget.active
                    ? Color.fromRGBO(255, 198, 0, 1)
                    : Colors.white,
                fontSize: 11,
                fontFamily: 'Neusa'),
          )
        ],
      ),
    );
  }
}
