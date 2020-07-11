// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$bottomBarCurrentIndexAtom =
      Atom(name: '_HomeControllerBase.bottomBarCurrentIndex');

  @override
  int get bottomBarCurrentIndex {
    _$bottomBarCurrentIndexAtom.reportRead();
    return super.bottomBarCurrentIndex;
  }

  @override
  set bottomBarCurrentIndex(int value) {
    _$bottomBarCurrentIndexAtom.reportWrite(value, super.bottomBarCurrentIndex,
        () {
      super.bottomBarCurrentIndex = value;
    });
  }

  final _$productsAtom = Atom(name: '_HomeControllerBase.products');

  @override
  ObservableList<ProductModel> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<ProductModel> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setBottomBarIndex(int i) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setBottomBarIndex');
    try {
      return super.setBottomBarIndex(i);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setProducts(List<ProductModel> p) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setProducts');
    try {
      return super.setProducts(p);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
bottomBarCurrentIndex: ${bottomBarCurrentIndex},
products: ${products}
    ''';
  }
}
