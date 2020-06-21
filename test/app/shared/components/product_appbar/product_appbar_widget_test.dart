import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/shared/components/product_appbar/product_appbar_widget.dart';

main() {
  testWidgets('ProductAppbarWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ProductAppbarWidget()));
    final textFinder = find.text('ProductAppbar');
    expect(textFinder, findsOneWidget);
  });
}
