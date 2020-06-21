// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppController on _AppBase, Store {
  Computed<int> _$itemsTotalComputed;

  @override
  int get itemsTotal => (_$itemsTotalComputed ??=
          Computed<int>(() => super.itemsTotal, name: '_AppBase.itemsTotal'))
      .value;

  final _$loadingAtom = Atom(name: '_AppBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$categoriesAtom = Atom(name: '_AppBase.categories');

  @override
  ObservableList<DocumentSnapshot> get categories {
    _$categoriesAtom.reportRead();
    return super.categories;
  }

  @override
  set categories(ObservableList<DocumentSnapshot> value) {
    _$categoriesAtom.reportWrite(value, super.categories, () {
      super.categories = value;
    });
  }

  final _$bannersAtom = Atom(name: '_AppBase.banners');

  @override
  ObservableList<DocumentSnapshot> get banners {
    _$bannersAtom.reportRead();
    return super.banners;
  }

  @override
  set banners(ObservableList<DocumentSnapshot> value) {
    _$bannersAtom.reportWrite(value, super.banners, () {
      super.banners = value;
    });
  }

  final _$productsAtom = Atom(name: '_AppBase.products');

  @override
  ObservableList<DocumentSnapshot> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(ObservableList<DocumentSnapshot> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  final _$totalAtom = Atom(name: '_AppBase.total');

  @override
  double get total {
    _$totalAtom.reportRead();
    return super.total;
  }

  @override
  set total(double value) {
    _$totalAtom.reportWrite(value, super.total, () {
      super.total = value;
    });
  }

  final _$listAtom = Atom(name: '_AppBase.list');

  @override
  ObservableList<ProductModel> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<ProductModel> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  final _$populateCategoryAsyncAction =
      AsyncAction('_AppBase.populateCategory');

  @override
  Future populateCategory() {
    return _$populateCategoryAsyncAction.run(() => super.populateCategory());
  }

  final _$populateBannerAsyncAction = AsyncAction('_AppBase.populateBanner');

  @override
  Future populateBanner() {
    return _$populateBannerAsyncAction.run(() => super.populateBanner());
  }

  final _$populateProductsAsyncAction =
      AsyncAction('_AppBase.populateProducts');

  @override
  Future populateProducts() {
    return _$populateProductsAsyncAction.run(() => super.populateProducts());
  }

  final _$addAsyncAction = AsyncAction('_AppBase.add');

  @override
  Future add(ProductModel model) {
    return _$addAsyncAction.run(() => super.add(model));
  }

  final _$updateAsyncAction = AsyncAction('_AppBase.update');

  @override
  Future update(ProductModel model) {
    return _$updateAsyncAction.run(() => super.update(model));
  }

  final _$removeAsyncAction = AsyncAction('_AppBase.remove');

  @override
  Future remove(int id) {
    return _$removeAsyncAction.run(() => super.remove(id));
  }

  final _$removeAllAsyncAction = AsyncAction('_AppBase.removeAll');

  @override
  Future removeAll() {
    return _$removeAllAsyncAction.run(() => super.removeAll());
  }

  final _$_AppBaseActionController = ActionController(name: '_AppBase');

  @override
  dynamic takeTotal(List<ProductModel> prices) {
    final _$actionInfo =
        _$_AppBaseActionController.startAction(name: '_AppBase.takeTotal');
    try {
      return super.takeTotal(prices);
    } finally {
      _$_AppBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
loading: ${loading},
categories: ${categories},
banners: ${banners},
products: ${products},
total: ${total},
list: ${list},
itemsTotal: ${itemsTotal}
    ''';
  }
}
