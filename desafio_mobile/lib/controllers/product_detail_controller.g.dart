// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProductDetailController on _ProductDetailBase, Store {
  final _$selectIndexAtom = Atom(name: '_ProductDetailBase.selectIndex');

  @override
  int get selectIndex {
    _$selectIndexAtom.reportRead();
    return super.selectIndex;
  }

  @override
  set selectIndex(int value) {
    _$selectIndexAtom.reportWrite(value, super.selectIndex, () {
      super.selectIndex = value;
    });
  }

  final _$_ProductDetailBaseActionController =
      ActionController(name: '_ProductDetailBase');

  @override
  void onTapped(int value) {
    final _$actionInfo = _$_ProductDetailBaseActionController.startAction(
        name: '_ProductDetailBase.onTapped');
    try {
      return super.onTapped(value);
    } finally {
      _$_ProductDetailBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
selectIndex: ${selectIndex}
    ''';
  }
}
