import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/shared/components/category_tile/category_tile_widget.dart';

main() {
  testWidgets('CategoryTileWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CategoryTileWidget()));
    final textFinder = find.text('CategoryTile');
    expect(textFinder, findsOneWidget);
  });
}
