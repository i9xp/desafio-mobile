import 'package:flutter/material.dart';

class BottomBarButtonWidget extends StatelessWidget {
  final BuildContext context;
  final double iconSize;
  final double fontSize;
  final String label;
  final IconData icon;
  final PageController controller;
  final int page;
  const BottomBarButtonWidget(
      {Key key,
      @required this.context,
      this.iconSize = 22,
      this.fontSize = 14,
      this.label = "",
      @required this.icon,
      @required this.controller,
      @required this.page})
      : assert(context != null),
        assert(icon != null),
        assert(controller != null),
        assert(page != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      fit: FlexFit.loose,
      child: Container(
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            borderRadius: BorderRadius.circular(kToolbarHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Icon(
                  icon,
                  color: (controller.page.round() == page)
                      ? Theme.of(context).buttonColor
                      : Theme.of(context).accentColor,
                  size: iconSize,
                ),
                SizedBox(height: 3.0),
                Text(
                  label,
                  style: Theme.of(context).textTheme.caption.copyWith(
                        fontWeight: FontWeight.w500,
                        fontSize: fontSize,
                        color: (controller.page.round() == page)
                            ? Theme.of(context).buttonColor
                            : Theme.of(context).accentColor,
                      ),
                ),
              ],
            ),
            onTap: () {
              controller.jumpToPage(page);
            },
          ),
        ),
      ),
    );
  }
}
