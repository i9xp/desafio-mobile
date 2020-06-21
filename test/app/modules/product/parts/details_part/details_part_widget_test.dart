import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/modules/product/parts/details_part/details_part_widget.dart';

main() {
  testWidgets('DetailsPartWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(DetailsPartWidget()));
    final textFinder = find.text('DetailsPart');
    expect(textFinder, findsOneWidget);
  });
}
