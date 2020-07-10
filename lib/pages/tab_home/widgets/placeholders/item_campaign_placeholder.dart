import 'package:flutter/material.dart';
import 'package:i9xp_commerce/models/campaign.model.dart';
import 'package:i9xp_commerce/pages/tab_home/widgets/item_campaign.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ItemCampaignPlaceholder extends StatelessWidget{

  final double width;
  ItemCampaignPlaceholder(this.width);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: AppColors.marineLight.withOpacity(0.2),
      highlightColor: AppColors.marineLight,
      enabled: true,
      child: ItemCampaign(CampaignModel(), width)
    );
  }
  
}