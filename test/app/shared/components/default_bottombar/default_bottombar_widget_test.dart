import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/shared/components/default_bottombar/default_bottombar_widget.dart';

main() {
  testWidgets('DefaultBottombarWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(DefaultBottombarWidget()));
    final textFinder = find.text('DefaultBottombar');
    expect(textFinder, findsOneWidget);
  });
}
