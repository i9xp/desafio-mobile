import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/shared/components/default_appbar/default_appbar_widget.dart';

main() {
  testWidgets('DefaultAppbarWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(DefaultAppbarWidget()));
    final textFinder = find.text('DefaultAppbar');
    expect(textFinder, findsOneWidget);
  });
}
