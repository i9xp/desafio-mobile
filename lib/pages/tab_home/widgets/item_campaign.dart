import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:i9xp_commerce/models/campaign.model.dart';
import 'package:i9xp_commerce/pages/tab_home/widgets/item_campaign_cta.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class ItemCampaign extends StatelessWidget {

  final double width;
  final CampaignModel campaign;
  ItemCampaign(this.width, this.campaign);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184,
      width: width,
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        image: this.campaign.imageUrl.value != null ? DecorationImage(
                image: CachedNetworkImageProvider(this.campaign.imageUrl.value),
                fit: BoxFit.cover,
              ) : null,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Visibility(
            visible: this.campaign.title != null,
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: this.width / 2),
              child: Text(
                this.campaign.title.value ?? "",
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w300,
                  color: AppColors.hex(this.campaign.titleColorHex.value ?? "#000000"),
                ),
              ),
            ),
          ),
          SizedBox.shrink(),
          Visibility(
            visible: this.campaign.cta.value != null,
            child: ItemCampaignCta(this.campaign),
          ),
        ],
      ),
    );
  }
}
