import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/modules/home/tabs/home_tab/parts/latest_part/latest_part_widget.dart';

main() {
  testWidgets('LatestPartWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(LatestPartWidget()));
    final textFinder = find.text('LatestPart');
    expect(textFinder, findsOneWidget);
  });
}
