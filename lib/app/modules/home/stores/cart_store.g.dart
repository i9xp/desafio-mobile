// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartStore on _CartStoreBase, Store {
  Computed<int> _$lengthComputed;

  @override
  int get length => (_$lengthComputed ??=
          Computed<int>(() => super.length, name: '_CartStoreBase.length'))
      .value;
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

  final _$cartAtom = Atom(name: '_CartStoreBase.cart');

  @override
  ObservableList<CartItemModel> get cart {
    _$cartAtom.reportRead();
    return super.cart;
  }

  @override
  set cart(ObservableList<CartItemModel> value) {
    _$cartAtom.reportWrite(value, super.cart, () {
      super.cart = value;
    });
  }

  final _$_CartStoreBaseActionController =
      ActionController(name: '_CartStoreBase');

  @override
  dynamic setCart(List<CartItemModel> cart) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.setCart');
    try {
      return super.setCart(cart);
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic addProduct(ProductModel p) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.addProduct');
    try {
      return super.addProduct(p);
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic clear() {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.clear');
    try {
      return super.clear();
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeProduct(String id) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.removeProduct');
    try {
      return super.removeProduct(id);
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cart: ${cart},
length: ${length},
hasProducts: ${hasProducts},
totalAmount: ${totalAmount}
    ''';
  }
}
