import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:testeapp/src/models/CarrinhoItemModel.dart';
import 'package:testeapp/src/models/ProductModel.dart';

class CarrinhoBloc with ChangeNotifier {

  final _carrinho  =  BehaviorSubject<List<CarrinhoItemModel>>.seeded([]);
  Observable<List<CarrinhoItemModel>> get carrinho => _carrinho.stream;

  void addProduct({ProductModel product}){
    var currentList = _carrinho.value;

    currentList.add(CarrinhoItemModel(
      1, product
    ));
    _carrinho.sink.add(currentList);

  }



  @override
  void dispose() {
    _carrinho.close();
    super.dispose();
  }
  


}