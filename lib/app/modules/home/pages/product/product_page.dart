import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/app_action_widget.dart';
import 'package:i9xp/app/modules/home/models/action_type.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:i9xp/app/modules/home/pages/product/components/price_score_widget.dart';
import 'package:i9xp/app/modules/home/pages/product/components/product_info_tabbar.dart';
import 'package:i9xp/app/modules/home/pages/product/components/product_page_view.dart';
import 'package:i9xp/app/modules/home/stores/cart_store.dart';
import 'package:i9xp/app/shared/constants/assets.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'package:i9xp/app/shared/constants/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'product_controller.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductPage extends StatefulWidget {
  final ProductModel productModel;
  const ProductPage({
    Key key,
    @required this.productModel,
  }) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends ModularState<ProductPage, ProductController>
    with SingleTickerProviderStateMixin {
  //use 'controller' variable to access controller
  final cartStore = Modular.get<CartStore>();
  final imageViewController = PageController(viewportFraction: 0.8);
  TabController infoTabbarController;

  @override
  void initState() {
    super.initState();
    infoTabbarController = TabController(
      length: 3,
      initialIndex: 1,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.PRODUCT_PAGE_BACKGROUND,
      appBar: AppBar(
        bottom: Price(price: 49.99, score: 4.9),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(widget.productModel.title, style: AppStyles.CATEGORY_ITEM),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Observer(builder: (_) {
              return AppAction(
                type: ActionType.CART,
                number: cartStore.produtosCarrinho,
              );
            }),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 15.h),
            SmoothPageIndicator(
              controller: imageViewController,
              count: 2,
              effect: SlideEffect(
                dotColor: AppColors.INDICATOR_COLOR,
                activeDotColor: AppColors.SELECTED_INDICATOR_COLOR,
                dotWidth: 8.0,
                dotHeight: 8.0,
              ),
            ),
            SizedBox(height: 25.h),
            ProductPageView(
              imageViewController: imageViewController,
              height: 301.h,
              children: [
                Image.asset(AppAssets.SHOES_WITH_SHADOW),
                Image.asset(AppAssets.WOMEN_SHOES),
              ],
            ),
            Container(
              height: 30,
              width: 300,
              child: ProductInfoTabbar(tabController: infoTabbarController),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            cartStore.setProdutosCarrinho(cartStore.produtosCarrinho + 1),
      ),
    );
  }
}
