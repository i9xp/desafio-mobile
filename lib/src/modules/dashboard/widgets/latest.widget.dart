import 'package:desafioi9xp/src/modules/dashboard/widgets/banner_item.widget.dart';
import 'package:desafioi9xp/styles/appstyle.dart';
import 'package:flutter/material.dart';

class Latest extends StatelessWidget {
  PageController pageController;

  Latest(this.pageController);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Text(
            "Latest",
            style: AppStyle.SECTION_TITLE,
          ),
        ),
        Container(
          height: 200,
          child: PageView(
            controller: pageController,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              BannerItem(AssetImage("assets/images/banner_1.png")),
              BannerItem(AssetImage("assets/images/banner_2.png")),
            ],
          ),
        ),
      ],
    );
  }
}
