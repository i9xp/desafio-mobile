import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/shared/components/cart_tile/cart_tile_widget.dart';

main() {
  testWidgets('CartTileWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CartTileWidget()));
    final textFinder = find.text('CartTile');
    expect(textFinder, findsOneWidget);
  });
}
