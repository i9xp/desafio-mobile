import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/commons/action_notification.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

import 'widgets/product_actions.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.marineLight,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(45.0),
        child: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Feather.chevron_left,
              size: 21,
              color: AppColors.yellow,
            ),
            onPressed: () => Get.back(),
          ),
          backgroundColor: AppColors.marineLight,
          centerTitle: true,
          title: Text(
            "Nome do produto selecionado",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              color: AppColors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: <Widget>[
            ActionNotification(Feather.shopping_cart, 5),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(),
      ),
      bottomNavigationBar: ProductActions(),
    );
  }
}
