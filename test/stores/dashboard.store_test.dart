import 'package:desafioi9xp/src/core/app.module.dart';
import 'package:desafioi9xp/src/core/enums/loading.enum.dart';
import 'package:desafioi9xp/src/core/interfaces/localstorage.interface.dart';
import 'package:desafioi9xp/src/modules/dashboard/stores/dashboard.store.dart';
import 'package:desafioi9xp/src/modules/home/stores/home.store.dart';
import 'package:desafioi9xp/src/modules/product/models/product.model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mobx/mobx.dart';
import 'package:mockito/mockito.dart';

class HiveServiceMock extends Mock implements ILocalStorage {}

void main() {
  initModule(AppModule());

  DashboardStore app;

  setUp(() {
    app = Modular.get<DashboardStore>();
  });

  group('DashboardStore Test', () {
    test("Initialization", () {
      expect(app, isInstanceOf<DashboardStore>());
    });

    test("When numberMessages is changed", () {
      expect(app.numberMessages, equals(0));
      app.numberMessages = 3;
      expect(app.numberMessages, equals(3));
    });

    test("When numberNotifications is changed", () {
      expect(app.numberNotifications, equals(0));
      app.numberNotifications = 3;
      expect(app.numberNotifications, equals(3));
    });

    test("When loadingStatus is changed", () {
      app.loadingStatus = ELoadingStatus.loading;
      expect(app.loadingStatus, equals(ELoadingStatus.loading));
      app.loadingStatus = ELoadingStatus.completed;
      expect(app.loadingStatus, equals(ELoadingStatus.completed));
    });

    test("When listProducts is changed", () {
      expect(app.listProducts, equals(null));
      app.listProducts = ObservableList<ProductModel>();
      app.listProducts.add(ProductModel(id: "1"));
      app.listProducts.add(ProductModel(id: "2"));
      expect(app.listProducts.length, equals(2));
    });
  });
}
