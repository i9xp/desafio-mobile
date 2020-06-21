import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/shared/components/product_tile/product_tile_widget.dart';

main() {
  testWidgets('ProductTileWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(ProductTileWidget()));
    final textFinder = find.text('ProductTile');
    expect(textFinder, findsOneWidget);
  });
}
