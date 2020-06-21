import 'package:desafio_mobile/app/models/product_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/modules/product/product_controller.dart';
import 'package:desafio_mobile/app/modules/product/product_module.dart';

void main() {
  ProductModel productModel;
  initModule(ProductModule(productModel: productModel));

  ProductController product;

  setUp(() {
    product = ProductModule.to.get<ProductController>();
  });

  group('ProductController Test', () {
    test("First Test", () {
      expect(product, isInstanceOf<ProductController>());
    });

    test("Set Value", () {
      expect(product.value, equals(0));
      product.increment();
      expect(product.value, equals(1));
    });
  });
}
