import 'package:flutter/material.dart';
import 'package:i9xp/app/modules/home/components/product_card_widget.dart';
import 'package:i9xp/app/modules/home/models/product_model.dart';

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
