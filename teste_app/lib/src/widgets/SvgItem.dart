import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SVGItem extends StatelessWidget {

  final String assetName;

  const SVGItem({Key key,@required this.assetName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      allowDrawingOutsideViewBox: true,
    );
  }
}
