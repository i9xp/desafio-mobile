import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:testeapp/src/models/CarrinhoItemModel.dart';
import 'package:testeapp/src/models/ProductModel.dart';

class CarrinhoBloc with ChangeNotifier {

  final _carrinho  =  BehaviorSubject<List<CarrinhoItemModel>>.seeded([]);
  Observable<List<CarrinhoItemModel>> get carrinho => _carrinho.stream;

  final _total = BehaviorSubject<double>.seeded(0.0);
  Observable<double>get total => _total.stream;


  void addProduct({ProductModel product}){
    var currentList = _carrinho.value;
    currentList.add(CarrinhoItemModel(
      1, product
    ));
    _carrinho.sink.add(currentList);
    updateTotal();
  }

  void updateTotal(){
    var currentTotal = 0.0;
    _carrinho.value.map((cartItem){
      currentTotal = currentTotal + cartItem.produto.value;
      print(currentTotal);
    }).toList();
    _total.sink.add(currentTotal);
  }

  void clearAll(){
    _carrinho.sink.add([]);
    _total.sink.add(0.0);
  }




  @override
  void dispose() {
    _total.close();
    _carrinho.close();
    super.dispose();
  }
  


}