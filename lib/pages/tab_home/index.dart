import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/commons/stage/index.dart';
import 'package:i9xp_commerce/commons/stage/widgets/data_offline.dart';
import 'package:i9xp_commerce/pages/tab_home/widgets/list_campaigns.dart';
import 'package:i9xp_commerce/pages/tab_home/widgets/list_products.dart';

import 'controller.dart';
import 'widgets/list_categories.dart';
import '../../commons/title_section.dart';

class TabHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabHomeController>(
      init: TabHomeController(),
      builder: (controller) => Obx(
        () => Stage(
          isOffline: controller.offline.value,
          offline: DataOffline(onReset: controller.loadContent),
          content: Container(
            height: Get.height,
            width: Get.width,
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
        ),
      ),
    );
  }
}
