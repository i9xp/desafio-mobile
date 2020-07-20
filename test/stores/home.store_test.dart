import 'package:desafioi9xp/src/core/app.module.dart';
import 'package:desafioi9xp/src/core/interfaces/localstorage.interface.dart';
import 'package:desafioi9xp/src/modules/home/stores/home.store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class HiveServiceMock extends Mock implements ILocalStorage {}

void main() {
  initModule(AppModule());

  HomeStore app;

  setUp(() {
    app = Modular.get<HomeStore>();
  });

  group('HomeStore Test', () {
    test("Initialization", () {
      expect(app, isInstanceOf<HomeStore>());
    });

    test("When setSelectedIndex is called", () {
      expect(app.selectedIndex, equals(0));
      app.setSelectedIndex(1);
      expect(app.selectedIndex, equals(1));
    });
  });
}
