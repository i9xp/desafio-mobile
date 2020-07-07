import 'package:flutter/material.dart';
import 'package:i9xp/app/shared/constants/assets.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppAssets.GRUPO);
  }
}
