// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartStore on _CartStoreBase, Store {
  Computed<bool> _$hasProductsComputed;

  @override
  bool get hasProducts =>
      (_$hasProductsComputed ??= Computed<bool>(() => super.hasProducts,
              name: '_CartStoreBase.hasProducts'))
          .value;
  Computed<String> _$totalAmountComputed;

  @override
  String get totalAmount =>
      (_$totalAmountComputed ??= Computed<String>(() => super.totalAmount,
              name: '_CartStoreBase.totalAmount'))
          .value;
  Computed<int> _$totalQuantityComputed;

  @override
  int get totalQuantity =>
      (_$totalQuantityComputed ??= Computed<int>(() => super.totalQuantity,
              name: '_CartStoreBase.totalQuantity'))
          .value;

  final _$cartListAtom = Atom(name: '_CartStoreBase.cartList');

  @override
  ObservableList<CartItemModel> get cartList {
    _$cartListAtom.reportRead();
    return super.cartList;
  }

  @override
  set cartList(ObservableList<CartItemModel> value) {
    _$cartListAtom.reportWrite(value, super.cartList, () {
      super.cartList = value;
    });
  }

  final _$insertProductAsyncAction =
      AsyncAction('_CartStoreBase.insertProduct');

  @override
  Future insertProduct(ProductModel productModel) {
    return _$insertProductAsyncAction
        .run(() => super.insertProduct(productModel));
  }

  final _$_CartStoreBaseActionController =
      ActionController(name: '_CartStoreBase');

  @override
  dynamic getProducts() {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.getProducts');
    try {
      return super.getProducts();
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeProduct(ProductModel productModel) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.removeProduct');
    try {
      return super.removeProduct(productModel);
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeAll() {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.removeAll');
    try {
      return super.removeAll();
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cartList: ${cartList},
hasProducts: ${hasProducts},
totalAmount: ${totalAmount},
totalQuantity: ${totalQuantity}
    ''';
  }
}
