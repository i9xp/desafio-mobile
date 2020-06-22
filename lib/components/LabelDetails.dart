import 'package:flutter/material.dart';

class LabelDetails extends StatefulWidget {
  final String label;
  final bool active;

  LabelDetails({
    Key key,
    this.label,
    this.active,
  }) : super(key: key);

  @override
  _LabelDetailsState createState() => _LabelDetailsState();
}

class _LabelDetailsState extends State<LabelDetails> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 9),
      child: Container(
        height: 31,
        decoration: BoxDecoration(
          color: widget.active
              ? Color.fromRGBO(255, 198, 0, 1)
              : Colors.transparent,
          borderRadius: BorderRadius.circular(17),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Text(
              widget.label,
              style: TextStyle(
                fontFamily: 'Neusa',
                fontSize: 15,
                color: widget.active
                    ? Color.fromRGBO(81, 92, 111, 1)
                    : Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
