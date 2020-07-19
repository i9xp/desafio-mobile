import 'package:desafioi9xp/src/modules/dashboard/styles/dashboard.style.dart';
import 'package:desafioi9xp/styles/appstyle.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            style: AppStyle.SECTION_TITLE,
          ),
          Divider(color: Colors.transparent),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: Image.asset("assets/images/apparel.png"),
                  ),
                  Divider(height: 5, color: Colors.transparent),
                  Text("Apparel", style: DashboardStyle.CATEGORY_TITLE),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: Image.asset("assets/images/beauty.png"),
                  ),
                  Divider(height: 5, color: Colors.transparent),
                  Text("Beauty", style: DashboardStyle.CATEGORY_TITLE),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: Image.asset("assets/images/shoes.png"),
                  ),
                  Divider(height: 5, color: Colors.transparent),
                  Text("Shoes", style: DashboardStyle.CATEGORY_TITLE),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    width: 64,
                    height: 64,
                    child: Image.asset("assets/images/seeall.png"),
                  ),
                  Divider(height: 5, color: Colors.transparent),
                  Text("See All", style: DashboardStyle.CATEGORY_TITLE),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
