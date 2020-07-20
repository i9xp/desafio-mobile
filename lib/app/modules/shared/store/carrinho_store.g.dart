// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CarrinhoStore on _CarrinhoStoreBase, Store {
  Computed<List<CarrinhoModel>> _$allProductsComputed;

  @override
  List<CarrinhoModel> get allProducts => (_$allProductsComputed ??=
          Computed<List<CarrinhoModel>>(() => super.allProducts,
              name: '_CarrinhoStoreBase.allProducts'))
      .value;
  Computed<int> _$totalComputed;

  @override
  int get total => (_$totalComputed ??=
          Computed<int>(() => super.total, name: '_CarrinhoStoreBase.total'))
      .value;

  @override
  String toString() {
    return '''
allProducts: ${allProducts},
total: ${total}
    ''';
  }
}
