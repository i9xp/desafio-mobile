import 'package:desafio_mobile/app/app_controller.dart';
import 'package:desafio_mobile/app/app_module.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_pattern/bloc_pattern_test.dart';

void main() {
  initModule(AppModule());

  AppController app;

  setUp(() {
    app = AppModule.to.get<AppController>();
  });

  group('AppController Test', () {
    test("First Test", () {
      expect(app, isInstanceOf<AppController>());
    });

    test("Get List", () {
      expect(app.categories.length, equals(null));
      app.populateCategory();
      expectLater(app.categories.length, equals(!null));
    });
  });
}
