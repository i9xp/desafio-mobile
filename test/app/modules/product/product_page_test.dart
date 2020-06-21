import 'package:desafio_mobile/app/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/modules/product/product_page.dart';

main() {
  ProductModel productModel;
  testWidgets('ProductPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ProductPage(
      productModel: productModel,
    )));
    final titleFinder = find.text('Product');
    expect(titleFinder, findsOneWidget);
  });
}
