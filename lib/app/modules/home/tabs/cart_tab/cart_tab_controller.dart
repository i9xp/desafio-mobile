import 'package:desafio_mobile/app/models/product_model.dart';
import 'package:desafio_mobile/app/shared/services/local_storage_service.dart';
import 'package:mobx/mobx.dart';

part 'cart_tab_controller.g.dart';

class CartTabController = _CartTabBase with _$CartTabController;

abstract class _CartTabBase with Store {}
