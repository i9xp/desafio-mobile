import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/modules/home/tabs/home_tab/parts/category_part/category_part_widget.dart';

main() {
  testWidgets('CategoryPartWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CategoryPartWidget()));
    final textFinder = find.text('CategoryPart');
    expect(textFinder, findsOneWidget);
  });
}
