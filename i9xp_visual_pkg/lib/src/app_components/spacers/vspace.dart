import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/src/app_styles/app_dimens/app_dimens.dart';

class VSpace extends StatelessWidget {

  final double height;
  const VSpace([this.height]);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? PADDING,
    );
  }
}