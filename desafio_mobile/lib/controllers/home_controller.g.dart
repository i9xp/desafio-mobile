// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  Computed<bool> _$loadingProductsComputed;

  @override
  bool get loadingProducts =>
      (_$loadingProductsComputed ??= Computed<bool>(() => super.loadingProducts,
              name: '_HomeBase.loadingProducts'))
          .value;

  final _$selectedIndexAtom = Atom(name: '_HomeBase.selectedIndex');

  @override
  int get selectedIndex {
    _$selectedIndexAtom.reportRead();
    return super.selectedIndex;
  }

  @override
  set selectedIndex(int value) {
    _$selectedIndexAtom.reportWrite(value, super.selectedIndex, () {
      super.selectedIndex = value;
    });
  }

  final _$responseAtom = Atom(name: '_HomeBase.response');

  @override
  ObservableFuture<List<dynamic>> get response {
    _$responseAtom.reportRead();
    return super.response;
  }

  @override
  set response(ObservableFuture<List<dynamic>> value) {
    _$responseAtom.reportWrite(value, super.response, () {
      super.response = value;
    });
  }

  final _$productsAtom = Atom(name: '_HomeBase.products');

  @override
  ObservableList<dynamic> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<dynamic> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void getProducts() {
    final _$actionInfo =
        _$_HomeBaseActionController.startAction(name: '_HomeBase.getProducts');
    try {
      return super.getProducts();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onItemTapped(int value) {
    final _$actionInfo =
        _$_HomeBaseActionController.startAction(name: '_HomeBase.onItemTapped');
    try {
      return super.onItemTapped(value);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectedIndex: ${selectedIndex},
response: ${response},
products: ${products},
loadingProducts: ${loadingProducts}
    ''';
  }
}
