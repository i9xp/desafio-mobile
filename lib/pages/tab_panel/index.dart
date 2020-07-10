import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/commons/action_notification.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';
import 'controller.dart';
import 'widgets/nav_bar.dart';

class TabPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabPanelController>(
      init: TabPanelController(),
      builder: (controller) => Scaffold(
        backgroundColor: AppColors.marine,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0),
          child: AppBar(
            elevation: 0,
            title: Image.asset("assets/images/logo.png", height: 16),
            actions: <Widget>[
              ActionNotification(Feather.message_circle, 5),
              ActionNotification(Feather.bell, 10),
            ],
          ),
        ),
        body: Obx(
          () => controller.selectedPage,
        ),
        bottomNavigationBar: Obx(
          () => NavBar(
            controller.items,
            controller.selectedIndex.value,
            controller.setSelectedIndex,
          ),
        ),
      ),
    );
  }
}
