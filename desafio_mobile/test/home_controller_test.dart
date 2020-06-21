import 'package:desafio_mobile/controllers/home_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("HomeController", (){
    test("When execute onTapped with a value, selectedIndex receive this value", (){
      final controller = HomeController();

      expect(controller.selectedIndex, 0);

      controller.onItemTapped(2);

      expect(controller.selectedIndex, 2);
    });
  });
}