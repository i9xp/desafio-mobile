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
import 'package:i9xp/app/modules/home/pages/cart/cart_page.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  double get pagePadding => 20;

  void _initScreenUtil() {
    ScreenUtil.init(width: 375, height: 667, allowFontScaling: false);
  }

  Future<void> _onProductTap(ProductModel p) async {
    final showCart = (await _navigateToProduct(p)) ?? false;
    if (showCart) _moveTabToCart();
  }

  _moveTabToCart() => controller.setBottomBarIndex(2);

  Future _navigateToProduct(ProductModel p) =>
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
        title: Observer(builder: (_) {
          return controller.bottomBarCurrentIndex != 2 ? Logo() : Container();
        }),
        actions: [
          AppAction(type: ActionType.MESSAGES, number: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: pagePadding),
            child: AppAction(type: ActionType.NOTIFICATIONS, number: 10),
          ),
        ],
      ),
      body: Observer(builder: (_) {
        if (controller.bottomBarCurrentIndex == 0) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pagePadding),
                  child: CategoryTitle(title: "Categories"),
                ),
                SizedBox(height: 14.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pagePadding),
                  child: CategoryList(categories: controller.categories),
                ),
                SizedBox(height: 27.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pagePadding),
                  child: CategoryTitle(title: "Latest"),
                ),
                LatestPageView(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: pagePadding),
                  child: Observer(builder: (_) {
                    if (controller.products == null) {
                      return CircularProgressIndicator();
                    }
                    return ProductList(
                      products: controller.products,
                      onProductTap: _onProductTap,
                    );
                  }),
                ),
                SizedBox(height: 8),
              ],
            ),
          );
        } else if (controller.bottomBarCurrentIndex == 2) {
          return CartPage();
        } else {
          return Center(child: Text("TODO"));
        }
      }),
      bottomNavigationBar: Observer(builder: (_) {
        return AppBottomNavigationBar(
          currentIndex: controller.bottomBarCurrentIndex,
          onTap: controller.setBottomBarIndex,
          items: [
            BottomNavigationBarItem(
              title: Text("HOME"),
              icon: Icon(Icons.home),
              // icon: Padding(
              //   padding: const EdgeInsets.only(bottom: 5.0),
              //   child: Image.asset(AppAssets.HOME),
              // ),
            ),
            BottomNavigationBarItem(
              title: Text("SEARCH"),
              icon: Icon(Icons.search),
              // icon: Padding(
              //   padding: const EdgeInsets.only(bottom: 5.0),
              //   child: Image.asset(AppAssets.SEARCH),
              // ),
            ),
            BottomNavigationBarItem(
              title: Text("CART"),
              icon: Icon(Icons.shopping_cart),
              // icon: Padding(
              //   padding: const EdgeInsets.only(bottom: 5.0),
              //   child: Image.asset(AppAssets.CART),
              // ),
            ),
            BottomNavigationBarItem(
              title: Text("PROFILE"),
              icon: Icon(Icons.person),
              // icon: Padding(
              //   padding: const EdgeInsets.only(bottom: 5.0),
              //   child: Image.asset(AppAssets.PROFILE),
              // ),
            ),
            BottomNavigationBarItem(
              title: Text("MORE"),
              icon: Icon(Icons.reorder),
              // icon: Padding(
              //   padding: const EdgeInsets.only(bottom: 5.0),
              //   child: Image.asset(AppAssets.MORE),
              // ),
            ),
          ],
        );
      }),
    );
  }
}
