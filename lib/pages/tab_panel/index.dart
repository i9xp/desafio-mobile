import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';
import 'controller.dart';
import 'widgets/nav_bar.dart';

class TabPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<TabsController>(
      init: TabsController(),
      builder: (controller) => Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(45.0),
          child: AppBar(
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "Pedidos (3)",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            actions: <Widget>[],
          ),
        ),
        body: Obx(
          () => Container(
            color: AppColors.white,
            child: controller.selectedPage,
          ),
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
