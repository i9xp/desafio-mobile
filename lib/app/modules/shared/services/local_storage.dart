import 'dart:async';
import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'package:hive/hive.dart';
import 'package:teste1/app/modules/shared/carrinho_model.dart';
import 'package:teste1/app/modules/shared/product_model.dart';

class LocalStorageService extends Disposable {
  Completer<Box> completer = Completer<Box>();

  LocalStorageService() {
    _initDB();
  }

  _initDB() async {
    final directory = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    final box = await Hive.openBox("shopping_carts");
    if (!completer.isCompleted) completer.complete(box);
  }

  Future<List<Map<String, dynamic>>> getAll() async {
    final box = await completer.future;

    List<Map<String, dynamic>> productsList = [];

    for (var item in box.values) {
      productsList.add(jsonDecode(item));
    }

    return productsList;
  }

  Future<List<CarrinhoModel>> add(List<CarrinhoModel> carrinho) async {
    final box = await completer.future;
    box.values.length.toString();

    print(box.values.toString());
    for (CarrinhoModel carrinhoItem in carrinho) {
      print(jsonEncode(carrinhoItem.toJson()));

      await box.add(jsonEncode(carrinhoItem.toJson()));
    }

    // for (CarrinhoModel carrinhoItem in carrinho) {
    //   await box.add(carrinhoItem.toJson());
    // }

    return carrinho;
  }

  update(List<CarrinhoModel> carrinho) async {
    final box = await completer.future;
    await box.clear();
    for (CarrinhoModel carrinhoItem in carrinho) {
      print(jsonEncode(carrinhoItem.toJson()));

      await box.add(jsonEncode(carrinhoItem.toJson()));
    }

    //  await box.put(carrinho, carrinho);
  }

  remove(int id) async {
    final box = await completer.future;
    await box.delete(id);
  }

  void removeAll() async {
    final box = await completer.future;
    await box.clear();
  }

  //dispose will be called automatically
  @override
  void dispose() async {
    final box = await completer.future;
    box.close();
  }
}
