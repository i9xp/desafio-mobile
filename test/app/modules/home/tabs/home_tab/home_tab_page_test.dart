import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/modules/home/tabs/home_tab/home_tab_page.dart';

main() {
  testWidgets('HomeTabPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(HomeTabPage(title: 'HomeTab')));
    final titleFinder = find.text('HomeTab');
    expect(titleFinder, findsOneWidget);
  });
}
