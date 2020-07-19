import 'package:mobx/mobx.dart';

part 'dashboard.store.g.dart';

class DashboardStore = _DashboardStoreBase with _$DashboardStore;

abstract class _DashboardStoreBase with Store {
  @observable
  int numberMessages = 0;

  @observable
  int numberNotifications = 0;
}
