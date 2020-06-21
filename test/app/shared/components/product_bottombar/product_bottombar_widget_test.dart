import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/shared/components/product_bottombar/product_bottombar_widget.dart';

main() {
  testWidgets('ProductBottombarWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ProductBottombarWidget()));
    final textFinder = find.text('ProductBottombar');
    expect(textFinder, findsOneWidget);
  });
}
