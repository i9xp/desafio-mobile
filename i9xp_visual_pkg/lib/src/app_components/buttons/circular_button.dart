import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_colors/app_color.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_dimens/app_dimens.dart';

class CircularButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  const CircularButton({Key key, @required this.onTap, @required this.icon}) : assert(onTap != null, 'onTap obrigatório'), assert(icon != null, 'icon obrigatório'), super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipOval(
            child: Material(
              color: GREY_2,
              child: InkWell(
                splashColor: ORANGE_1,
                child: SizedBox(width: PADDING_L, height: PADDING_L, child: Icon(icon, size: PADDING - 2,)),
                onTap: onTap,
              ),
            ),
          );
  }
}