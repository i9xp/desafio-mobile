import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

import 'package:desafio_mobile/app/modules/home/tabs/home_tab/home_tab_controller.dart';
import 'package:desafio_mobile/app/modules/home/tabs/home_tab/home_tab_module.dart';

void main() {
  initModule(HomeTabModule());

  HomeTabController hometab;

  setUp(() {
    hometab = HomeTabModule.to.get<HomeTabController>();
  });

  group('HomeTabController Test', () {
    test("First Test", () {
      expect(hometab, isInstanceOf<HomeTabController>());
    });

    test("Set Value", () {
      expect(hometab.value, equals(0));
      hometab.increment();
      expect(hometab.value, equals(1));
    });
  });
}
