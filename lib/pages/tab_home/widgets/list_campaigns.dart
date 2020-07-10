import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:i9xp_commerce/utils/formatters.dart';

import '../controller.dart';
import 'item_campaign.dart';
import 'placeholders/item_campaign_placeholder.dart';

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
    return Obx(
      () => Visibility(
        visible: controller.loading.value == false,
        replacement: SizedBox(
          height: 184,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            scrollDirection: Axis.horizontal,
            itemCount: 1,
            separatorBuilder: (_, __) => SizedBox(width: separatorMargin),
            itemBuilder: (_, int index) => ItemCampaignPlaceholder(cardWidth),
          ),
        ),
        child: SizedBox(
          height: 184,
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            scrollDirection: Axis.horizontal,
            itemCount: controller.campaigns.length,
            separatorBuilder: (_, __) => SizedBox(width: separatorMargin),
            itemBuilder: (_, int index) =>
                ItemCampaign(controller.campaigns[index], cardWidth),
          ),
        ),
      ),
    );
  }
}
