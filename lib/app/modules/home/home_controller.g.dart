// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$productsListAtom = Atom(name: '_HomeControllerBase.productsList');

  @override
  ObservableStream<List<ProductModel>> get productsList {
    _$productsListAtom.reportRead();
    return super.productsList;
  }

  @override
  set productsList(ObservableStream<List<ProductModel>> value) {
    _$productsListAtom.reportWrite(value, super.productsList, () {
      super.productsList = value;
    });
  }

  final _$clearCartAsyncAction = AsyncAction('_HomeControllerBase.clearCart');

  @override
  Future clearCart() {
    return _$clearCartAsyncAction.run(() => super.clearCart());
  }

  final _$getShoppingCartInStorageAsyncAction =
      AsyncAction('_HomeControllerBase.getShoppingCartInStorage');

  @override
  Future getShoppingCartInStorage() {
    return _$getShoppingCartInStorageAsyncAction
        .run(() => super.getShoppingCartInStorage());
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic getList() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.getList');
    try {
      return super.getList();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
productsList: ${productsList}
    ''';
  }
}
