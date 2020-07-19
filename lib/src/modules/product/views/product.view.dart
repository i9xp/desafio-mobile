import 'package:cached_network_image/cached_network_image.dart';
import 'package:desafioi9xp/src/core/widgets/custombadge.widget.dart';
import 'package:desafioi9xp/src/core/widgets/custombutton.widget.dart';
import 'package:desafioi9xp/src/modules/cart/controllers/cart.controller.dart';
import 'package:desafioi9xp/src/modules/home/controllers/home.controller.dart';
import 'package:desafioi9xp/src/modules/product/controllers/product.controller.dart';
import 'package:desafioi9xp/src/modules/product/models/product.model.dart';
import 'package:desafioi9xp/src/modules/product/styles/product.style.dart';
import 'package:desafioi9xp/src/modules/product/widgets/product_appbar_price.widget.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductView extends StatefulWidget {
  final ProductModel product;

  const ProductView({Key key, this.product}) : super(key: key);

  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> with SingleTickerProviderStateMixin {
  ProductController _productController = Modular.get<ProductController>();
  CartController _cartController = Modular.get<CartController>();
  HomeController _homeController = Modular.get<HomeController>();

  @override
  void initState() {
    _productController.productInfoTabController = TabController(
      length: 3,
      initialIndex: 1,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: AppColors.backgroundColor,
      body: buildBody(),
      bottomNavigationBar: buildBottomNavbar(),
    );
  }

  Widget buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.backgroundColor,
      title: Column(
        children: [
          Text(
            widget.product.completeName,
            style: ProductStyle.PRODUCT_TITLE,
          ),
        ],
      ),
      bottom: ProductPrice(
        price: widget.product.price,
        score: widget.product.score,
      ),
      actions: [
        Observer(
          builder: (_) {
            final count = _cartController.cartStore.totalQuantity;
            return CustomBadge(
              count: count,
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                _homeController.onItemTapped(2);
                Modular.to.pop();
              },
            );
          },
        ),
      ],
    );
  }

  Widget buildBody() {
    return Column(
      children: [
        Divider(color: Colors.transparent),
        SmoothPageIndicator(
          count: widget.product.images.length,
          controller: _productController.productImagesPageController,
          effect: WormEffect(
            dotColor: AppColors.dotInidicatorColor,
            activeDotColor: AppColors.dotInidicatorActiveColor,
            dotWidth: 5.0,
            dotHeight: 5.0,
            spacing: 3.0,
          ),
        ),
        Divider(color: Colors.transparent),
        Container(
          width: double.infinity,
          height: 200,
          child: PageView.builder(
            controller: _productController.productImagesPageController,
            itemCount: widget.product.images.length,
            itemBuilder: (context, index) {
              final image = widget.product.images[index];
              return Container(
                child: Hero(
                  tag: image,
                  child: CachedNetworkImage(
                    imageUrl: image,
                  ),
                ),
              );
            },
          ),
        ),
        Divider(height: 30, color: Colors.transparent),
        Container(
          height: 27,
          child: TabBar(
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
            controller: _productController.productInfoTabController,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: AppColors.bgBottomNavBarColor,
            labelStyle: TextStyle(fontFamily: "Neusa"),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.primaryColor,
            ),
            tabs: [
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                  child: Text("Product"),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                  child: Text("Details"),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
                  child: Text("Reviews"),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _productController.productInfoTabController,
            children: [
              ProductInfo(),
              ProductDetails(),
              ProductDetails(),
            ],
          ),
        ),
      ],
    );
  }

  Widget ProductDetails() {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("BRAND", style: ProductStyle.PRODUCT_DETAILS_TITLE),
              Text(widget.product.brand, style: ProductStyle.PRODUCT_DETAILS_TEXT),
              Divider(height: 20, color: Colors.transparent),
              Text("CONDITION", style: ProductStyle.PRODUCT_DETAILS_TITLE),
              Text(widget.product.condition, style: ProductStyle.PRODUCT_DETAILS_TEXT),
              Divider(height: 20, color: Colors.transparent),
              Text("CATEGORY", style: ProductStyle.PRODUCT_DETAILS_TITLE),
              Text(widget.product.category, style: ProductStyle.PRODUCT_DETAILS_TEXT),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("SKU", style: ProductStyle.PRODUCT_DETAILS_TITLE),
              Text(widget.product.sku, style: ProductStyle.PRODUCT_DETAILS_TEXT),
              Divider(height: 20, color: Colors.transparent),
              Text("MATERIAL", style: ProductStyle.PRODUCT_DETAILS_TITLE),
              Text(widget.product.material, style: ProductStyle.PRODUCT_DETAILS_TEXT),
              Divider(height: 20, color: Colors.transparent),
              Text("FITTING", style: ProductStyle.PRODUCT_DETAILS_TITLE),
              Text(widget.product.fiting, style: ProductStyle.PRODUCT_DETAILS_TEXT),
            ],
          )
        ],
      ),
    );
  }

  Widget ProductInfo() {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Text(
        widget.product.description,
        style: ProductStyle.PRODUCT_DESCRIPTION,
      ),
    );
  }

  Widget buildBottomNavbar() {
    return Container(
      color: AppColors.bgBottomNavBarColor,
      padding: EdgeInsets.only(top: 15.0, left: 15.0, bottom: 25.0, right: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            "SHARE THIS",
            backgroundColor: Colors.white,
            icon: Image.asset("assets/images/share.png"),
            onPressed: () {},
          ),
          CustomButton(
            "ADD TO CART",
            onPressed: () {
              _homeController.onItemTapped(2);
              _cartController.insertProduct(widget.product);
              Modular.to.pop();
            },
          ),
        ],
      ),
    );
  }
}
