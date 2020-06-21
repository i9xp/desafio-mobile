import 'dart:async';
import 'package:desafio_mobile/app/models/product_model.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:hive/hive.dart';

class LocalStorageService extends Disposable {
  Completer<Box> completer = Completer<Box>();

  LocalStorageService() {
    _initDB();
  }

  _initDB() async {
    final directory = await path_provider.getApplicationDocumentsDirectory();
    Hive.init(directory.path);
    final box = await Hive.openBox("cart");
    if (!completer.isCompleted) completer.complete(box);
  }

  Future<List<ProductModel>> getAll() async {
    final box = await completer.future;
    return box.values.map((item) => ProductModel.fromJson(item)).toList();
  }

  Future<ProductModel> add(ProductModel model) async {
    final box = await completer.future;
    model.id = box.values.length;
    await box.put(box.values.length, model.toHive());
    return model;
  }

  update(ProductModel model) async {
    final box = await completer.future;
    await box.put(model.sku, model.toHive());
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
