import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

import 'widgets/section_title.dart';

class TabHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      width: Get.width,
      decoration: BoxDecoration(
        color: AppColors.marine,
      ),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SectionTitle("Categories"),
            SectionTitle("Latest"),
          ],
        ),
      ),
    );
  }
}
