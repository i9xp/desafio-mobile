import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/modules/home/tabs/cart_tab/cart_tab_page.dart';

main() {
  PageController pageController;
  testWidgets('CartTabPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CartTabPage(
      pageController: pageController,
    )));
    final titleFinder = find.text('CartTab');
    expect(titleFinder, findsOneWidget);
  });
}
