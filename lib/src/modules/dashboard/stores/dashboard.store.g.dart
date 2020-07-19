// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DashboardStore on _DashboardStoreBase, Store {
  final _$numberMessagesAtom = Atom(name: '_DashboardStoreBase.numberMessages');

  @override
  int get numberMessages {
    _$numberMessagesAtom.reportRead();
    return super.numberMessages;
  }

  @override
  set numberMessages(int value) {
    _$numberMessagesAtom.reportWrite(value, super.numberMessages, () {
      super.numberMessages = value;
    });
  }

  final _$numberNotificationsAtom =
      Atom(name: '_DashboardStoreBase.numberNotifications');

  @override
  int get numberNotifications {
    _$numberNotificationsAtom.reportRead();
    return super.numberNotifications;
  }

  @override
  set numberNotifications(int value) {
    _$numberNotificationsAtom.reportWrite(value, super.numberNotifications, () {
      super.numberNotifications = value;
    });
  }

  final _$loadingStatusAtom = Atom(name: '_DashboardStoreBase.loadingStatus');

  @override
  ELoadingStatus get loadingStatus {
    _$loadingStatusAtom.reportRead();
    return super.loadingStatus;
  }

  @override
  set loadingStatus(ELoadingStatus value) {
    _$loadingStatusAtom.reportWrite(value, super.loadingStatus, () {
      super.loadingStatus = value;
    });
  }

  final _$listProductsAtom = Atom(name: '_DashboardStoreBase.listProducts');

  @override
  ObservableList<ProductModel> get listProducts {
    _$listProductsAtom.reportRead();
    return super.listProducts;
  }

  @override
  set listProducts(ObservableList<ProductModel> value) {
    _$listProductsAtom.reportWrite(value, super.listProducts, () {
      super.listProducts = value;
    });
  }

  final _$loadProductsAsyncAction =
      AsyncAction('_DashboardStoreBase.loadProducts');

  @override
  Future loadProducts() {
    return _$loadProductsAsyncAction.run(() => super.loadProducts());
  }

  @override
  String toString() {
    return '''
numberMessages: ${numberMessages},
numberNotifications: ${numberNotifications},
loadingStatus: ${loadingStatus},
listProducts: ${listProducts}
    ''';
  }
}
