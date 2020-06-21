import 'package:flutter/material.dart';

class DefaultIconButtonWidget extends StatelessWidget {
  final double width;
  final Color backgroundColor;
  final String text;
  final Color textColor;
  final IconData icon;
  final Color iconColor;
  final Color iconBackgroundColor;
  final VoidCallback onTap;
  final double fontSize;
  final double iconSize;

  const DefaultIconButtonWidget(
      {Key key,
      this.width = 150,
      this.backgroundColor,
      @required this.text,
      this.textColor,
      this.icon,
      this.iconColor,
      this.iconBackgroundColor,
      @required this.onTap,
      this.fontSize = 18,
      this.iconSize = 32})
      : assert(text != null),
        assert(onTap != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          width: width,
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          decoration: BoxDecoration(
              color: backgroundColor ?? Theme.of(context).buttonColor,
              borderRadius: BorderRadius.circular(24)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(text,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: textColor ?? Theme.of(context).accentColor,
                      fontSize: fontSize,
                      fontWeight: FontWeight.w700)),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: iconBackgroundColor ?? Theme.of(context).accentColor,
                    borderRadius: BorderRadius.circular(64)),
                child: Center(
                  child: Icon(
                    icon,
                    size: iconSize,
                    color: iconColor ?? Theme.of(context).primaryColor,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
