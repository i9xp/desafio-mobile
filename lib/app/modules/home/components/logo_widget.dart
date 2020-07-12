import 'package:flutter/material.dart';
import 'package:i9xp/app/shared/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.GRUPO,
      width: 52.w,
    );
  }
}
