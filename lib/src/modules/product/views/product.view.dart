import 'package:badges/badges.dart';
import 'package:desafioi9xp/src/core/widgets/custombutton.widget.dart';
import 'package:desafioi9xp/src/modules/product/controllers/product.controller.dart';
import 'package:desafioi9xp/src/modules/product/styles/product.style.dart';
import 'package:desafioi9xp/src/modules/product/widgets/productratingstar.widget.dart';
import 'package:desafioi9xp/styles/appcolors.dart';
import 'package:desafioi9xp/styles/appstyle.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductView extends StatefulWidget {
  @override
  _ProductViewState createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> with SingleTickerProviderStateMixin {
  ProductController _productController;

  @override
  void initState() {
    _productController = new ProductController();
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
            "Faux Sued Ankle Boots",
            style: ProductStyle.PRODUCT_TITLE,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "\$49.99",
                style: ProductStyle.PRODUCT_TITLE,
              ),
              Container(width: 5),
              ProductRatingStar("4.9"),
            ],
          ),
        ],
      ),
      actions: [
        Badge(
          badgeContent: Text(
            "1",
            style: AppStyle.BADGE_NUMBER,
          ),
          badgeColor: AppColors.primaryColor,
          position: BadgePosition.bottomLeft(left: 0.0, bottom: 10.0),
          child: Container(
            width: 32,
            height: 32,
            child: FlatButton(
              padding: EdgeInsets.zero,
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () {},
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildBody() {
    return Column(
      children: [
        Divider(color: Colors.transparent),
        SmoothPageIndicator(
          count: 3,
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
          child: PageView(
            controller: _productController.productImagesPageController,
            children: [
              Container(
                color: Colors.red,
                child: Text("1"),
              ),
              Container(
                color: Colors.blue,
                child: Text("2"),
              ),
              Container(
                color: Colors.green,
                child: Text("3"),
              ),
            ],
          ),
        ),
        Divider(height: 30, color: Colors.transparent),
        Container(
          height: 30,
          child: TabBar(
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 5.0),
            controller: _productController.productInfoTabController,
            unselectedLabelColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontFamily: "Neusa"),
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: AppColors.primaryColor,
            ),
            tabs: [
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
                  child: Text("Product"),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
                  child: Text("Details"),
                ),
              ),
              Tab(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 10.0),
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
              Text("Lily's Ankle Boots", style: ProductStyle.PRODUCT_DETAILS_TEXT),
              Divider(height: 20, color: Colors.transparent),
              Text("CONDITION", style: ProductStyle.PRODUCT_DETAILS_TITLE),
              Text("Lily's Ankle Boots", style: ProductStyle.PRODUCT_DETAILS_TEXT),
              Divider(height: 20, color: Colors.transparent),
              Text("CATEGORY", style: ProductStyle.PRODUCT_DETAILS_TITLE),
              Text("Lily's Ankle Boots", style: ProductStyle.PRODUCT_DETAILS_TEXT),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("SKU", style: ProductStyle.PRODUCT_DETAILS_TITLE),
              Text("Lily's Ankle Boots", style: ProductStyle.PRODUCT_DETAILS_TEXT),
              Divider(height: 20, color: Colors.transparent),
              Text("MATERIAL", style: ProductStyle.PRODUCT_DETAILS_TITLE),
              Text("Lily's Ankle Boots", style: ProductStyle.PRODUCT_DETAILS_TEXT),
              Divider(height: 20, color: Colors.transparent),
              Text("FITTING", style: ProductStyle.PRODUCT_DETAILS_TITLE),
              Text("Lily's Ankle Boots", style: ProductStyle.PRODUCT_DETAILS_TEXT),
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
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget lobortis nisl, sit amet finibus nisl. Cras ultricies eros sed ultricies venenatis. Integer sit amet vehicula erat. Sed sollicitudin massa eget neque pulvinar, in convallis justo efficitur. Duis consequat turpis at est placerat, quis egestas ipsum cursus.",
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Neusa",
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }

  Widget buildBottomNavbar() {
    return Container(
      color: AppColors.bgBottomNavBarColor,
      padding: EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomButton(
            "SHARE THIS",
            backgroundColor: Colors.white,
            icon: Image.asset("assets/images/share.png"),
            onPressed: () {
              print("click");
            },
          ),
          CustomButton(
            "ADD TO CART",
            onPressed: () {
              print("click");
            },
          ),
        ],
      ),
    );
  }
}
