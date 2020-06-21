// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartController on _CartBase, Store {
  final _$itensAtom = Atom(name: '_CartBase.itens');

  @override
  ObservableList<CartItemModel> get itens {
    _$itensAtom.reportRead();
    return super.itens;
  }

  @override
  set itens(ObservableList<CartItemModel> value) {
    _$itensAtom.reportWrite(value, super.itens, () {
      super.itens = value;
    });
  }

  final _$totalAtom = Atom(name: '_CartBase.total');

  @override
  double get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(double value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  final _$_CartBaseActionController = ActionController(name: '_CartBase');

  @override
  void addItem(ProductModel item) {
    final _$actionInfo =
        _$_CartBaseActionController.startAction(name: '_CartBase.addItem');
    try {
      return super.addItem(item);
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addTotal(double price) {
    final _$actionInfo =
        _$_CartBaseActionController.startAction(name: '_CartBase.addTotal');
    try {
      return super.addTotal(price);
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void resetValues() {
    final _$actionInfo =
        _$_CartBaseActionController.startAction(name: '_CartBase.resetValues');
    try {
      return super.resetValues();
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
itens: ${itens},
total: ${total}
    ''';
  }
}
