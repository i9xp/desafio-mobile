import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'package:i9xp/app/shared/constants/styles.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class ProductList extends StatelessWidget {
  final List<ProductModel> products;
  final Function(ProductModel) onProductTap;
  final bool isLoading;

  const ProductList({
    Key key,
    this.products = const <ProductModel>[],
    this.onProductTap,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // children: _loadingWidgets(),
        children: isLoading
            ? _loadingWidgets()
            : products.map(_productToWidget).toList(),
      ),
    );
  }

  Widget _productToWidget(ProductModel p) => ProductCard(
        image: p.images[0],
        title: p.name,
        price: p.price,
        onTap: () => onProductTap(p),
      );

  List<Widget> _loadingWidgets() {
    return [
      LoadingCard(),
      LoadingCard(),
      LoadingCard(),
    ];
  }
}

class LoadingCard extends StatelessWidget {
  double get borderRadius => 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 100.w,
      height: 135.h,
      decoration: BoxDecoration(
        color: AppColors.CARD_BACKGROUND,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Opacity(
                opacity: 0.25,
                child: Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: Colors.grey,
                  child: Container(
                    color: Colors.white,
                    width: 80.w,
                    height: 80.w,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 3),
          Opacity(
            opacity: 0.25,
            child: Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.grey,
              child: Container(
                color: Colors.white,
                height: 10,
                width: 60.w,
              ),
            ),
          ),
          SizedBox(height: 3),
          Opacity(
            opacity: 0.25,
            child: Shimmer.fromColors(
              baseColor: Colors.white,
              highlightColor: Colors.grey,
              child: Container(
                color: Colors.white,
                height: 10,
                width: 20.w,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final Function onTap;
  final bool isLoading;

  const ProductCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.price,
    this.isLoading = false,
    this.onTap,
  }) : super(key: key);

  // String get priceToString => "\$${price.toStringAsFixed(2)}";
  double get borderRadius => 10;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 100.w,
      height: 135.h,
      child: Material(
        color: AppColors.CARD_BACKGROUND,
        borderRadius: BorderRadius.circular(borderRadius),
        child: InkWell(
          borderRadius: BorderRadius.circular(borderRadius),
          onTap: this.onTap,
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 80.w,
                        height: 80.w,
                        child: Hero(
                          tag: image,
                          child: CachedNetworkImage(
                            imageUrl: image,
                            imageBuilder: (context, provider) => Image(
                              image: provider,
                            ),
                            errorWidget: (context, url, error) => Container(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Text(
                    title,
                    style: AppStyles.PRODUCT_TITLE,
                  ),
                  SizedBox(height: 3),
                  Text(
                    "\$$price",
                    style: AppStyles.PRODUCT_PRICE,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
