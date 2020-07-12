// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartController on _CartControllerBase, Store {
  final _$totalAmountAtom = Atom(name: '_CartControllerBase.totalAmount');

  @override
  String get totalAmount {
    _$totalAmountAtom.reportRead();
    return super.totalAmount;
  }

  @override
  set totalAmount(String value) {
    _$totalAmountAtom.reportWrite(value, super.totalAmount, () {
      super.totalAmount = value;
    });
  }

  @override
  String toString() {
    return '''
totalAmount: ${totalAmount}
    ''';
  }
}
