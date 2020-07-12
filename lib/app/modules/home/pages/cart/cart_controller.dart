import 'package:mobx/mobx.dart';

part 'cart_controller.g.dart';

class CartController = _CartControllerBase with _$CartController;

abstract class _CartControllerBase with Store {
  @observable
  String totalAmount;

  setTotalAmount(String t) => totalAmount = t;
}
