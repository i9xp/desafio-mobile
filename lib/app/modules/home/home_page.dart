import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/app_action_widget.dart';
import 'package:i9xp/app/modules/home/components/app_navigation_bar_widget.dart';
import 'package:i9xp/app/modules/home/components/category_list.dart';
import 'package:i9xp/app/modules/home/components/category_title.dart';
import 'package:i9xp/app/modules/home/components/latest_page_view.dart';
import 'package:i9xp/app/modules/home/components/logo_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:i9xp/app/modules/home/components/product_list.dart';
import 'package:i9xp/app/modules/home/models/action_type.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  num get pagePadding => 25.h;

  void _initScreenUtil() {
    ScreenUtil.init(width: 375, height: 667, allowFontScaling: false);
  }

  void _onProductTap(ProductModel p) {
    _navigateToProduct(p);
  }

  void _navigateToProduct(ProductModel p) =>
      Modular.to.pushNamed("/product", arguments: p);

  @override
  Widget build(BuildContext context) {
    _initScreenUtil();
    return Scaffold(
      backgroundColor: AppColors.HOME_BACKGROUND_A,
      appBar: AppBar(
        centerTitle: false,
        titleSpacing: pagePadding,
        elevation: 0,
        title: Logo(),
        actions: [
          AppAction(type: ActionType.MESSAGES, number: 5),
          Padding(
            padding: EdgeInsets.only(left: 20, right: pagePadding),
            child: AppAction(type: ActionType.NOTIFICATIONS, number: 10),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: pagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CategoryTitle(title: "Categories"),
              SizedBox(height: 14),
              CategoryList(categories: controller.categories),
              SizedBox(height: 27),
              CategoryTitle(title: "Latest"),
              LatestPageView(),
              ProductList(
                products: controller.products,
                onProductTap: _onProductTap,
              ),
              SizedBox(height: 8),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Observer(builder: (_) {
        return AppBottomNavigationBar(
          currentIndex: controller.bottomBarCurrentIndex,
          onTap: controller.setBottomBarIndex,
          items: controller.bottomBarItems,
        );
      }),
    );
  }
}
