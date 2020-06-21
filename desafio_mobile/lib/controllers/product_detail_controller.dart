import 'package:mobx/mobx.dart';

part 'product_detail_controller.g.dart';

class ProductDetailController = _ProductDetailBase with _$ProductDetailController;

abstract class _ProductDetailBase with Store {
  @observable
  int selectIndex = 1;

  @action
  void onTapped(int value){
    selectIndex = value;
  }
}