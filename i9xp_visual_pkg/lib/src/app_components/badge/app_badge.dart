import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_colors/app_color.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_dimens/app_dimens.dart';
import 'dart:math' as math;

class AppBadge extends StatefulWidget {
  final AssetImage icon;
  final int counter;
  final double iconSize;

  const AppBadge(
      {Key key,
      @required this.icon,
      @required this.counter,
      this.iconSize = 45})
      : assert(icon != null, 'Parametro obrigatório: Informe o ícone'),
        assert(icon != null, 'Parametro obrigatório: Informe o counter'),
        super(key: key);

  @override
  _AppBadgeState createState() => _AppBadgeState();
}

class _AppBadgeState extends State<AppBadge> {
  @override
  Widget build(BuildContext context) {
    final double fontSize = widget.iconSize * .11 + 7;
    final double iconSize = math.max(widget.iconSize, 35);

    return Container(
        width: iconSize,
        height: iconSize,
        child: Stack(
          children: [
            Container(
                alignment: Alignment.topRight,
                child: Image(
                    image: widget.icon,
                    height: iconSize * .7,
                    width: iconSize * .7,
                    fit: BoxFit.contain)),
            _Chip(widget.counter, iconSize, fontSize),
          ],
        ));
  }
}

class _Chip extends StatelessWidget {
  final int counter;
  final double iconSize;
  final double fontSize;

  _Chip(this.counter, this.iconSize, this.fontSize);

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomLeft,
        margin: EdgeInsets.only(
            bottom: PADDING_XXS * iconSize * .06,
            left: PADDING_XXS * iconSize * .02),
        child: Container(
          height: iconSize * .5,
          width: iconSize * .65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColor,
            boxShadow: [
              BoxShadow(
                color: GREY_4.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 4)
              ),
            ]
          ),
          child: Center(
              child: Text(
            counter > 99 ? '99' : counter.toString(),
            style: Theme.of(context)
                .textTheme
                .overline
                .copyWith(fontSize: fontSize),
          )),
        ));
  }
}
