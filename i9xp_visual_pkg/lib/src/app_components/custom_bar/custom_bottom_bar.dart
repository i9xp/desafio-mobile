import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_dimens/app_dimens.dart';

class CustomBottomBar extends StatelessWidget {

  final List<Widget> children;
  const CustomBottomBar({Key key, this.children}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: PADDING_S),
      color: Theme.of(context).canvasColor,
      width: MediaQuery.of(context).size.width,
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: children ?? [],
      )
    );
  }
}