// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_cart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ShoppingCartController on _ShoppingCartControllerBase, Store {
  Computed<CarrinhoStore> _$carrinhoStoreComputed;

  @override
  CarrinhoStore get carrinhoStore => (_$carrinhoStoreComputed ??=
          Computed<CarrinhoStore>(() => super.carrinhoStore,
              name: '_ShoppingCartControllerBase.carrinhoStore'))
      .value;
  Computed<List<CarrinhoModel>> _$carrinhoListComputed;

  @override
  List<CarrinhoModel> get carrinhoList => (_$carrinhoListComputed ??=
          Computed<List<CarrinhoModel>>(() => super.carrinhoList,
              name: '_ShoppingCartControllerBase.carrinhoList'))
      .value;
  Computed<int> _$totalComputed;

  @override
  int get total => (_$totalComputed ??= Computed<int>(() => super.total,
          name: '_ShoppingCartControllerBase.total'))
      .value;

  final _$getListAsyncAction =
      AsyncAction('_ShoppingCartControllerBase.getList');

  @override
  Future getList() {
    return _$getListAsyncAction.run(() => super.getList());
  }

  final _$getShoppingCartInStorageAsyncAction =
      AsyncAction('_ShoppingCartControllerBase.getShoppingCartInStorage');

  @override
  Future getShoppingCartInStorage() {
    return _$getShoppingCartInStorageAsyncAction
        .run(() => super.getShoppingCartInStorage());
  }

  final _$clearCartAsyncAction =
      AsyncAction('_ShoppingCartControllerBase.clearCart');

  @override
  Future clearCart() {
    return _$clearCartAsyncAction.run(() => super.clearCart());
  }

  final _$addShoppingCartToStorageAsyncAction =
      AsyncAction('_ShoppingCartControllerBase.addShoppingCartToStorage');

  @override
  Future addShoppingCartToStorage(List<CarrinhoModel> carrinhoModel) {
    return _$addShoppingCartToStorageAsyncAction
        .run(() => super.addShoppingCartToStorage(carrinhoModel));
  }

  @override
  String toString() {
    return '''
carrinhoStore: ${carrinhoStore},
carrinhoList: ${carrinhoList},
total: ${total}
    ''';
  }
}
