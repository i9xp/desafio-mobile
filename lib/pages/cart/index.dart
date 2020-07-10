import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/commons/action_notification.dart';
import 'package:i9xp_commerce/pages/cart_content/index.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class Cart extends StatelessWidget {
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
          actions: <Widget>[
            ActionNotification(Feather.message_circle, 5),
            ActionNotification(Feather.bell, 10),
          ],
        ),
      ),
      body: CartContent(),
    );
  }
}
