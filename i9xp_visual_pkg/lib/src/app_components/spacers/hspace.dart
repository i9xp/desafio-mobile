import 'package:flutter/material.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';

class HSpace extends StatelessWidget {

  final double width;
  const HSpace([this.width]);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? PADDING,
    );
  }
}