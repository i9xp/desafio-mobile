import 'package:i9xp_app/app/shared/controllers/app_controller.dart';
import 'package:i9xp_app/app/utils/extensions/list.ext.dart';
import 'package:i9xp_services_pkg/i9xp_services_pkg.dart';
import 'package:mobx/mobx.dart';

part 'app_model.g.dart';

class AppModel = _AppModelBase with _$AppModel;

abstract class _AppModelBase with Store {

  @observable ObservableList<String> messages = ObservableList<String>();
  @computed int get messagesLength => messages.length;
  @action addMessage(String message) => messages.add(message);
  
  @observable ObservableList<String> notifications = ObservableList<String>();
  @computed int get notificationsLength => notifications.length;
  @action addNotification(String notification) => notifications.add(notification);

  @observable ObservableList<CartItemModel> cartList = ObservableList<CartItemModel>();
  @computed double get cartPriceTotal => cartList.sum((item) => item.product.price * item.quantity);

  addToCart(CartItemModel model){
    var filtered = cartList.where((item) => item.product.sku == model.product.sku);
    var exists = (filtered?.length ?? 0) > 0;
    if (exists){
      filtered.first.add();
    } else {
      cartList.add(model..add());
    }
  }

  @computed int get cartProductLength => cartList.length;
  
  @observable int _viewIndex = 0;
  int get viewIndex => _viewIndex;
  @action setTabViewIndex(int value) => _viewIndex = value;

  @observable
  ObservableFuture<ResponseStatus<List<ProductModel>>> productsFuture;

  @action
  Future<ResponseStatus<List<ProductModel>>> getProducts({int id}) async {
    if (id == null) return productsFuture = ObservableFuture(AppController().repository.products.get());
    return null; // Implementar consulta de produto especifico
  }
  
}