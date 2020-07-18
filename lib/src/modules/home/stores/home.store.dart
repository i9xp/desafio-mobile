import 'package:mobx/mobx.dart';

part 'home.store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  @observable
  int selectedIndex = 0;

  @action
  setSelectedIndex(index) {
    selectedIndex = index;
  }
}
