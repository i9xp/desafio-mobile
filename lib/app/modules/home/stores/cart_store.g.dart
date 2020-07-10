// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartStore on _CartStoreBase, Store {
  final _$produtosCarrinhoAtom = Atom(name: '_CartStoreBase.produtosCarrinho');

  @override
  int get produtosCarrinho {
    _$produtosCarrinhoAtom.reportRead();
    return super.produtosCarrinho;
  }

  @override
  set produtosCarrinho(int value) {
    _$produtosCarrinhoAtom.reportWrite(value, super.produtosCarrinho, () {
      super.produtosCarrinho = value;
    });
  }

  final _$_CartStoreBaseActionController =
      ActionController(name: '_CartStoreBase');

  @override
  void setProdutosCarrinho(int p) {
    final _$actionInfo = _$_CartStoreBaseActionController.startAction(
        name: '_CartStoreBase.setProdutosCarrinho');
    try {
      return super.setProdutosCarrinho(p);
    } finally {
      _$_CartStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
produtosCarrinho: ${produtosCarrinho}
    ''';
  }
}
