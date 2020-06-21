import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_dimens/app_dimens.dart';

class CustomAppBar extends StatelessWidget {
  final List<Widget> actions;
  final Widget leading;
  final Widget title;
  final Widget bottom;
  final Color color;

  const CustomAppBar(
      {Key key, this.actions, this.leading, this.title, this.bottom, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      child: Column(
        children: <Widget>[
          Container(
            color: color ?? Colors.transparent,
            padding: EdgeInsets.only(bottom: 0, left: PADDING, right: PADDING, top: MediaQuery.of(context).padding.top),
            child: Row(
              children: <Widget>[
                leading ?? Container(),
                Expanded(child: title ?? Container()),
                Row(
                  children: actions ?? []
                )
              ],
            ),
          ),
          bottom ?? Container()
        ],
      ),
    );
  }
}
