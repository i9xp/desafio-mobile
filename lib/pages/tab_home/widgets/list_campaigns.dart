import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/utils/formatters.dart';

import '../controller.dart';
import 'item_campaign.dart';

class ListCampaigns extends StatelessWidget {

  final TabHomeController controller = Get.find();
  static final int itemsPerPage = 1;
  static final double horizontalPadding = 25;
  static final double separatorMargin = 20;
  static final double cardWidth = Formatters.horizontalScrollItemWidth(
    Get.width,
    horizontalPadding,
    separatorMargin,
    itemsPerPage,
    saveBorder: 10,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 184,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
        scrollDirection: Axis.horizontal,
        itemCount: controller.campaigns.length,
        separatorBuilder: (_, __) => SizedBox(width: separatorMargin),
        itemBuilder: (_, int index) => ItemCampaign(cardWidth, controller.campaigns[index]),
      ),
    );
  }
}
