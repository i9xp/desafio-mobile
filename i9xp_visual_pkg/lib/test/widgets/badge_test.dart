import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';
import 'package:i9xp_visual_pkg/src/app_components/badge/app_badge.dart';

void main() {
  
  testWidgets('Badge deve mostar valor 0', (WidgetTester tester) async {
    
    int counter = 0;

    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
              child: AppBadge(
        icon: AppImage.cart, 
        counter: counter
      ),
    ));

    final valorZero = find.text('0');
    expect(valorZero, findsOneWidget);
  });

  testWidgets('Badge deve mostar valor 1', (WidgetTester tester) async {
    
    int counter = 1;

    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
              child: AppBadge(
        icon: AppImage.cart, 
        counter: counter
      ),
    ));

    final valorZero = find.text('1');
    expect(valorZero, findsOneWidget);
  });
}