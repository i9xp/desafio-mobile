import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/app_action_widget.dart';
import 'package:i9xp/app/modules/home/models/action_type.dart';
import 'package:i9xp/app/modules/home/components/bottom_button_widget.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:i9xp/app/modules/home/pages/product/components/detail_section.dart';
import 'package:i9xp/app/modules/home/pages/product/components/price_score_widget.dart';
import 'package:i9xp/app/modules/home/pages/product/components/product_info_tabbar.dart';
import 'package:i9xp/app/modules/home/pages/product/components/product_page_view.dart';
import 'package:i9xp/app/modules/home/pages/product/components/product_section.dart';
import 'package:i9xp/app/modules/home/pages/product/components/review_section.dart';
import 'package:i9xp/app/modules/home/pages/product/models/bottom_button_type.dart';
import 'package:i9xp/app/modules/home/stores/cart_store.dart';
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

  _addToCart() {
    cartStore.addProduct(widget.productModel);
    Modular.to.pop(true);
  }

  _goToCart() => Modular.to.pop(true);

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
        centerTitle: true,
        bottom: Price(
          price: widget.productModel.price,
          score: widget.productModel.score,
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          widget.productModel.completeName,
          style: AppStyles.CATEGORY_ITEM,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Observer(builder: (_) {
              return AppAction(
                type: ActionType.CART,
                number: cartStore.length,
                onTap: _goToCart,
              );
            }),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 15.h),
          SmoothPageIndicator(
            controller: imageViewController,
            count: widget.productModel.images.length,
            effect: SlideEffect(
              dotColor: AppColors.INDICATOR_COLOR,
              activeDotColor: AppColors.SELECTED_INDICATOR_COLOR,
              dotWidth: 8.0,
              dotHeight: 8.0,
            ),
          ),
          SizedBox(height: 20.h),
          ProductPageView(
            imageViewController: imageViewController,
            height: 225.h,
            children: widget.productModel.images
                .map((image) => Hero(
                      tag: image,
                      child: CachedNetworkImage(
                        imageUrl: image,
                        imageBuilder: (context, provider) =>
                            Image(image: provider),
                        errorWidget: (context, url, error) => Container(),
                      ),
                    ))
                .toList(),
          ),
          Container(
            height: 30.h,
            width: 250.w,
            child: ProductInfoTabbar(tabController: infoTabbarController),
          ),
          SizedBox(height: 10),
          Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                ProductSection(description: widget.productModel.description),
                DetailsSection(
                  brand: widget.productModel.brand,
                  sku: widget.productModel.sku,
                  condition: widget.productModel.condition,
                  material: widget.productModel.material,
                  category: widget.productModel.category,
                  fiting: widget.productModel.fiting,
                ),
                ReviewSection(),
              ],
              controller: infoTabbarController,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 17.0),
        color: AppColors.PRODUCT_BOTTOM,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                BottomButton(
                  label: "SHARE THIS",
                  type: BottomButtonType.SHARE,
                  labelStyle: AppStyles.PRODUCT_BOTTOM_BUTTON,
                  onTap: () {},
                ),
                BottomButton(
                  label: "ADD TO CART",
                  type: BottomButtonType.ADD_TO_CART,
                  color: AppColors.BAGDE_BACKGROUND,
                  labelStyle: AppStyles.PRODUCT_BOTTOM_BUTTON.copyWith(
                    color: AppColors.PRODUCT_SELECTED_TAB_TEXT,
                  ),
                  onTap: _addToCart,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
