import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/modules/product/parts/img_part/img_part_widget.dart';

main() {
  testWidgets('ImgPartWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ImgPartWidget()));
    final textFinder = find.text('ImgPart');
    expect(textFinder, findsOneWidget);
  });
}
