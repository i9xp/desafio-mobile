import 'package:desafio_mobile/services/api_service.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  ApiService api;

  _HomeBase({this.api});

  @observable
  int selectedIndex = 0;

  @observable
  ObservableFuture<List> response = ObservableFuture.value(null);

  @observable
  ObservableList products = ObservableList.of([]);

  @computed
  bool get loadingProducts => response.status == FutureStatus.pending;

  @action
  void getProducts() {
    response = api.getAllProducts().asObservable()
      ..then((value) => products.addAll(value));
  }

  @action
  void onItemTapped(int value) {
    selectedIndex = value;
  }
}
