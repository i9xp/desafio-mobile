import 'package:desafio_mobile/app/modules/home/tabs/home_tab/parts/product_part/product_part_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

main() {
  testWidgets('ProductTabWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ProductPartWidget()));
    final textFinder = find.text('ProductTab');
    expect(textFinder, findsOneWidget);
  });
}
