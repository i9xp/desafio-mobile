import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/shared/components/basic_structure/basic_structure_widget.dart';

main() {
  testWidgets('BasicStructureWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(BasicStructureWidget()));
    final textFinder = find.text('BasicStructure');
    expect(textFinder, findsOneWidget);
  });
}
