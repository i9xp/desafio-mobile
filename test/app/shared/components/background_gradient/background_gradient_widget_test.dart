import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/shared/components/background_gradient/background_gradient_widget.dart';

main() {
  testWidgets('BackgroundGradientWidget has message',
      (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(BackgroundGradientWidget()));
    final textFinder = find.text('BackgroundGradient');
    expect(textFinder, findsOneWidget);
  });
}
