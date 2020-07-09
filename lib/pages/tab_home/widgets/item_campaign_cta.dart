import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:i9xp_commerce/models/campaign.model.dart';
import 'package:i9xp_commerce/utils/app_colors.dart';

class ItemCampaignCta extends StatelessWidget {
  final CampaignModel campaign;
  ItemCampaignCta(this.campaign);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () => {},
      padding: EdgeInsets.only(left: 10, top: 5, right: 5, bottom: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
      color: AppColors.white,
      elevation: 1,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            this.campaign.cta.value ?? "",
            style: TextStyle(
              height: 1.4,
              fontSize: 12,
              color: AppColors.marineDark,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 10),
          Container(
            width: 26,
            height: 26,
            decoration: BoxDecoration(
              color: AppColors.yellow,
              borderRadius: BorderRadius.circular(26),
            ),
            child: Icon(
              Feather.chevron_right,
              size: 21,
              color: AppColors.white,
            ),
          )
        ],
      ),
    );
  }
}
