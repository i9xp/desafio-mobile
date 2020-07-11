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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: products.map(_productToWidget).toList(),
    );
  }

  Widget _productToWidget(ProductModel p) => ProductCard(
        image: p.image,
        title: p.title,
        price: p.price,
        onTap: () => onProductTap(p),
      );
}

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final double price;
  final Function onTap;

  const ProductCard({
    Key key,
    @required this.image,
    @required this.title,
    @required this.price,
    this.onTap,
  }) : super(key: key);

  String get priceToString => "\$${price.toStringAsFixed(2)}";
  double get borderRadius => 10;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.CARD_BACKGROUND,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        borderRadius: BorderRadius.circular(borderRadius),
        onTap: this.onTap,
        child: Container(
          padding: EdgeInsets.all(borderRadius),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 77.w,
                height: 77.w,
                child: Image.asset(image),
              ),
              SizedBox(height: 3),
              Text(title, style: AppStyles.PRODUCT_TITLE),
              SizedBox(height: 3),
              Text(priceToString, style: AppStyles.PRODUCT_PRICE)
            ],
          ),
        ),
      ),
    );
  }
}
