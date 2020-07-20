// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarrinhoModel on _CarrinhoModelBase, Store {
  Computed<int> _$quantidadeComputed;

  @override
  int get quantidade =>
      (_$quantidadeComputed ??= Computed<int>(() => super.quantidade,
              name: '_CarrinhoModelBase.quantidade'))
          .value;

  final _$_quantidadeAtom = Atom(name: '_CarrinhoModelBase._quantidade');

  @override
  int get _quantidade {
    _$_quantidadeAtom.reportRead();
    return super._quantidade;
  }

  @override
  set _quantidade(int value) {
    _$_quantidadeAtom.reportWrite(value, super._quantidade, () {
      super._quantidade = value;
    });
  }

  final _$_CarrinhoModelBaseActionController =
      ActionController(name: '_CarrinhoModelBase');

  @override
  void adicionar() {
    final _$actionInfo = _$_CarrinhoModelBaseActionController.startAction(
        name: '_CarrinhoModelBase.adicionar');
    try {
      return super.adicionar();
    } finally {
      _$_CarrinhoModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  CarrinhoModel fromJson(List<Map<String, dynamic>> json) {
    final _$actionInfo = _$_CarrinhoModelBaseActionController.startAction(
        name: '_CarrinhoModelBase.fromJson');
    try {
      return super.fromJson(json);
    } finally {
      _$_CarrinhoModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Map<String, dynamic> toJson() {
    final _$actionInfo = _$_CarrinhoModelBaseActionController.startAction(
        name: '_CarrinhoModelBase.toJson');
    try {
      return super.toJson();
    } finally {
      _$_CarrinhoModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void remover() {
    final _$actionInfo = _$_CarrinhoModelBaseActionController.startAction(
        name: '_CarrinhoModelBase.remover');
    try {
      return super.remover();
    } finally {
      _$_CarrinhoModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
quantidade: ${quantidade}
    ''';
  }
}
