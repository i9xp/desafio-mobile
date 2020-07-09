import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/app_action_widget.dart';
import 'package:i9xp/app/modules/home/components/category_list.dart';
import 'package:i9xp/app/modules/home/components/category_title.dart';
import 'package:i9xp/app/modules/home/components/logo_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i9xp/app/modules/home/models/action_type.dart';
import 'package:i9xp/app/modules/home/models/category_image.dart';
import 'package:i9xp/app/modules/home/models/category_item_model.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final categories = [
    CategoryItemModel("Apparel", CategoryImage.APPAREL),
    CategoryItemModel("Beauty", CategoryImage.BEAUTY),
    CategoryItemModel("Shoes", CategoryImage.SHOES),
    CategoryItemModel("See all", CategoryImage.SEE_ALL),
  ];

  num get pagePadding => 25.h;

  void _initScreenUtil() {
    ScreenUtil.init(width: 375, height: 667, allowFontScaling: false);
  }

  @override
  Widget build(BuildContext context) {
    _initScreenUtil();
    return Scaffold(
      backgroundColor: AppColors.HOME_BACKGROUND_A,
      appBar: AppBar(
        titleSpacing: pagePadding,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Logo(),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppAction(type: ActionType.MESSAGES, number: 5),
                  SizedBox(width: 20),
                  AppAction(type: ActionType.NOTIFICATIONS, number: 10),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: pagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CategoryTitle(title: "Categories"),
              SizedBox(height: 14),
              CategoryList(categories: categories),
              SizedBox(height: 27),
              CategoryTitle(title: "Latest")
            ],
          ),
        ),
      ),
    );
  }
}
