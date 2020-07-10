import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i9xp/app/modules/home/components/app_action_widget.dart';
import 'package:i9xp/app/modules/home/models/action_type.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:i9xp/app/modules/home/pages/product/components/bottom_button_widget.dart';
import 'package:i9xp/app/modules/home/pages/product/components/price_score_widget.dart';
import 'package:i9xp/app/modules/home/pages/product/components/product_info_tabbar.dart';
import 'package:i9xp/app/modules/home/pages/product/components/product_page_view.dart';
import 'package:i9xp/app/modules/home/pages/product/models/bottom_button_type.dart';
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
      body: Column(
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
          SizedBox(height: 20.h),
          ProductPageView(
            imageViewController: imageViewController,
            height: 250.h,
            children: [
              Image.asset(AppAssets.SHOES_WITH_SHADOW),
              Image.asset(AppAssets.WOMEN_SHOES),
            ],
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
                ProductInfoSection(),
                ProductInfoSection(
                  infos: [
                    ProductInfoModel(
                      "BRAND",
                      "Lily’s Ankle Boots",
                    ),
                    ProductInfoModel(
                      "SKU",
                      "0590458902809",
                    ),
                    ProductInfoModel(
                      "CONDITION",
                      "Brand New, With Box",
                    ),
                    ProductInfoModel(
                      "MATERIAL",
                      "Faux Sued, Velvet",
                    ),
                    ProductInfoModel(
                      "CATEGORY",
                      "Women Shoes",
                    ),
                    ProductInfoModel(
                      "FITING",
                      "True To Size",
                    ),
                  ],
                ),
                ProductInfoSection(),
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
                  onTap: () {
                    cartStore
                        .setProdutosCarrinho(cartStore.produtosCarrinho + 1);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProductInfoSection extends StatelessWidget {
  const ProductInfoSection({
    Key key,
    this.infos = const <ProductInfoModel>[],
  }) : super(key: key);

  final List<ProductInfoModel> infos;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SingleChildScrollView(
        child: Column(
          children: _buildRows(),
        ),
      ),
    );
  }

  List<Widget> _buildRows() {
    if (infos.length == 0) return [];
    var widgets = <Widget>[];
    for (var i = 0; i < infos.length; i += 2) {
      final infoRow = InfoRow(
        firstInfo: infos[i],
        secondInfo: i + 1 < infos.length ? infos[i + 1] : null,
      );

      widgets.add(infoRow);
      if (i + 1 < infos.length) {
        widgets.add(SizedBox(height: 20.h));
      }
    }
    return widgets;
  }
}

class InfoRow extends StatelessWidget {
  const InfoRow({
    Key key,
    @required this.firstInfo,
    @required this.secondInfo,
  }) : super(key: key);

  final ProductInfoModel firstInfo;
  final ProductInfoModel secondInfo;

  bool get hasSecondInfo => secondInfo != null;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Info(
          title: firstInfo.title,
          content: firstInfo.content,
        ),
        if (hasSecondInfo)
          Info(
            title: secondInfo.title,
            content: secondInfo.content,
            crossAxisAlignment: CrossAxisAlignment.end,
          ),
      ],
    );
  }
}

class Info extends StatelessWidget {
  const Info({
    Key key,
    @required this.title,
    @required this.content,
    this.crossAxisAlignment = CrossAxisAlignment.start,
  }) : super(key: key);

  final String title;
  final String content;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        Text(title, style: AppStyles.PRODUCT_INFO_TITLE),
        SizedBox(height: 5),
        Text(content, style: AppStyles.PRODUCT_INFO_CONTENT),
      ],
    );
  }
}

class ProductInfoModel {
  String title;
  String content;

  ProductInfoModel(this.title, this.content);
}
