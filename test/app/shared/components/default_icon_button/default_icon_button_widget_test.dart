import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/shared/components/default_icon_button/default_icon_button_widget.dart';

main() {
  testWidgets('DefaultIconButtonWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(DefaultIconButtonWidget()));
    final textFinder = find.text('DefaultIconButton');
    expect(textFinder, findsOneWidget);
  });
}
