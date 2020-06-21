import 'package:flutter/material.dart';
import 'package:i9xp_app/app/pages/product_detail.dart/components/product_detail_line.dart';
import 'package:i9xp_services_pkg/i9xp_services_pkg.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';

class BoxProductDetail extends StatelessWidget {

  final ProductModel product;

  const BoxProductDetail({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ProductDetailLine(
          label1: 'BRAND',
          label2: product.brand ?? '',
          label3: 'SKU',
          label4: product.sku ?? '',
        ),
        VSpace(),
        ProductDetailLine(
          label1: 'CONDITION',
          label2: product.condition ?? '',
          label3: 'MATERIAL',
          label4: product.material ?? '',
        ),
        VSpace(),
        ProductDetailLine(
          label1: 'CATEGORY',
          label2: product.category ?? '',
          label3: 'FITTING',
          label4: product.fitting ?? '',
        )
      ],
    );
  }
}