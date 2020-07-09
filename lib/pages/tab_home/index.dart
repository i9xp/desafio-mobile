import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/pages/tab_home/widgets/list_campaigns.dart';
import 'package:i9xp_commerce/pages/tab_home/widgets/list_products.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

import 'controller.dart';
import 'widgets/list_categories.dart';
import 'widgets/title_section.dart';

class TabHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabHomeController>(
      init: TabHomeController(),
      builder: (controller) => Container(
        height: Get.height,
        width: Get.width,
        decoration: BoxDecoration(
          color: AppColors.marine,
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TitleSection("Categories"),
              SizedBox(height: 15),
              ListCategories(),
              SizedBox(height: 27),
              TitleSection("Latest"),
              SizedBox(height: 15),
              ListCampaigns(),
              SizedBox(height: 21),
              ListProducts(),
            ],
          ),
        ),
      ),
    );
  }
}
