import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/appbar_home_title.dart';
import 'package:i9xp/app/modules/home/components/category_list.dart';
import 'package:i9xp/app/modules/home/components/category_title.dart';
import 'package:i9xp/app/modules/home/components/latest_page_view.dart';
import 'package:i9xp/app/modules/home/components/logo_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i9xp/app/modules/home/components/product_list.dart';
import 'package:i9xp/app/modules/home/models/action_model.dart';
import 'package:i9xp/app/modules/home/models/action_type.dart';
import 'package:i9xp/app/modules/home/models/category_image.dart';
import 'package:i9xp/app/modules/home/models/category_item_model.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:i9xp/app/shared/constants/assets.dart';
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

  final appbarActions = <ActionModel>[
    ActionModel(ActionType.MESSAGES, notifications: 5),
    ActionModel(ActionType.NOTIFICATIONS, notifications: 10),
  ];

  final products = <ProductModel>[
    ProductModel("Ankle Boots", 49.99, AppAssets.WOMEN_SHOES),
    ProductModel("Backpack", 20.58, AppAssets.BACKPACK),
    ProductModel("Red Scarf", 11.00, AppAssets.SCARF),
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
        title: AppbarHomeTitle(
          leading: Logo(),
          actions: appbarActions,
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
              CategoryTitle(title: "Latest"),
              LatestPageView(),
              ProductList(products: products),
            ],
          ),
        ),
      ),
    );
  }
}
