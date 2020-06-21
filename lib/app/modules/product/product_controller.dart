import 'package:mobx/mobx.dart';

part 'product_controller.g.dart';

class ProductController = _ProductBase with _$ProductController;

abstract class _ProductBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
