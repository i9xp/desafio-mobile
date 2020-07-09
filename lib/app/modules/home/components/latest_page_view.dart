import 'package:flutter/material.dart';
import 'package:i9xp/app/shared/constants/assets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LatestPageView extends StatelessWidget {
  const LatestPageView({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 235.h,
      child: PageView(
        children: [
          Image.asset(AppAssets.BANNER_1),
          Image.asset(AppAssets.BANNER_2),
        ],
      ),
    );
  }
}
