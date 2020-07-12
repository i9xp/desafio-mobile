import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';
import 'package:i9xp/app/shared/constants/colors.dart';
import 'package:i9xp/app/shared/constants/styles.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductList extends StatelessWidget {
  final List<ProductModel> products;
  final Function(ProductModel) onProductTap;

  const ProductList({
    Key key,
    this.products = const <ProductModel>[],
    this.onProductTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.h,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: products.map(_productToWidget).toList(),
      ),
    );
  }

  Widget _productToWidget(ProductModel p) => ProductCard(
        image: p.images[0],
        title: p.name,
        price: p.price,
        onTap: () => onProductTap(p),
      );
}

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final Function onTap;

  const ProductCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.price,
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
                          child: Image(
                            image: CachedNetworkImageProvider(
                              image,
                              scale: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3),
                  Text(
                    title,
                    style: AppStyles.PRODUCT_TITLE,
                    // overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 3),
                  Text("\$$price", style: AppStyles.PRODUCT_PRICE),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
