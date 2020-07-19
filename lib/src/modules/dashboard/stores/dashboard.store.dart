import 'package:desafioi9xp/src/core/enums/loading.enum.dart';
import 'package:desafioi9xp/src/modules/dashboard/repositories/dashboard.repository.dart';
import 'package:desafioi9xp/src/modules/product/models/product.model.dart';
import 'package:mobx/mobx.dart';

part 'dashboard.store.g.dart';

class DashboardStore = _DashboardStoreBase with _$DashboardStore;

abstract class _DashboardStoreBase with Store {
  final DashboardRepository _dashboardRepository;

  _DashboardStoreBase(this._dashboardRepository);

  @observable
  int numberMessages = 0;

  @observable
  int numberNotifications = 0;

  @observable
  ELoadingStatus loadingStatus;

  @observable
  ObservableList<ProductModel> listProducts;

  @action
  loadProducts() async {
    loadingStatus = _dashboardRepository.getStatus();
    listProducts = ObservableList<ProductModel>.of(await _dashboardRepository.getProducts());
    loadingStatus = _dashboardRepository.getStatus();
  }
}
