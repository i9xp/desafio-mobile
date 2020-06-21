import 'package:desafio_mobile/controllers/product_detail_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("ProductDetailController", (){
    test("When execute onTapped with a value, selectedIndex receive this value", (){
      final controller = ProductDetailController();

      expect(controller.selectIndex, 1);

      controller.onTapped(2);

      expect(controller.selectIndex, 2);
    });
  });
}