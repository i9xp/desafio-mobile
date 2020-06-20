import 'package:mobx/mobx.dart';

part 'home_tab_controller.g.dart';

class HomeTabController = _HomeTabBase with _$HomeTabController;

abstract class _HomeTabBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
