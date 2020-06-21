import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:desafio_mobile/app/shared/services/local_storage_service.dart';
import 'package:mobx/mobx.dart';

import 'models/category_model.dart';
import 'models/product_model.dart';

part 'app_controller.g.dart';

class AppController = _AppBase with _$AppController;

abstract class _AppBase with Store {
  final LocalStorageService service;
  _AppBase(this.service) {
    _init();
  }

  _init() async {
    loading = true;
    await populateCategory();
    await populateBanner();
    await populateProducts();
    final allList = await service.getAll();
    list.addAll(allList);
    takeTotal(list);
    loading = false;
  }

  @observable
  bool loading = true;

  ///DocumentSnapshot list of Firebase response
  @observable
  ObservableList<DocumentSnapshot> categories =
      ObservableList<DocumentSnapshot>();

  ///DocumentSnapshot list of Firebase response
  @observable
  ObservableList<DocumentSnapshot> banners = ObservableList<DocumentSnapshot>();

  ///DocumentSnapshot list of Firebase response
  @observable
  ObservableList<DocumentSnapshot> products =
      ObservableList<DocumentSnapshot>();

  ///This Method takes all documents from category collection
  @action
  populateCategory() async {
    try {
      final category =
          await Firestore.instance.collection("category").getDocuments();
      categories.addAll(category.documents.map((e) => e));
    } catch (e) {
      print("Error $e");
    }
  }

  ///This Method takes all documents from banners collection
  @action
  populateBanner() async {
    try {
      final banner =
          await Firestore.instance.collection("banners").getDocuments();
      banners.addAll(banner.documents.map((e) => e));
    } catch (e) {
      print("Error $e");
    }
  }

  ///This Method takes all documents from category -> products collection
  @action
  populateProducts() async {
    try {
      final product =
          await Firestore.instance.collection("highlight").getDocuments();
      products.addAll(product.documents.map((e) => e));
    } catch (e) {
      print("Error $e");
    }
  }

  ///Storage actions
  @action
  add(ProductModel model) async {
    model = await service.add(model);
    list.add(model);
  }

  @action
  update(ProductModel model) async {
    await service.update(model);
  }

  @action
  remove(int id) async {
    await service.remove(id);
    list.removeWhere((item) => item.id == id);
  }

  @action
  removeAll() async {
    service.removeAll();
  }

  @observable
  double total = 0;

  @action
  takeTotal(List<ProductModel> prices) {
    for (var price in prices) {
      total += price.price;
    }
  }

  @observable
  ObservableList<ProductModel> list = ObservableList<ProductModel>();

  @computed
  int get itemsTotal => list.length;
}
