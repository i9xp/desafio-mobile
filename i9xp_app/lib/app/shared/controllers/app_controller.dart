import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:i9xp_app/app/pages/tab_views/cart/cart_view.dart';
import 'package:i9xp_app/app/pages/tab_views/home/home_view.dart';
import 'package:i9xp_app/app/shared/controllers/service_controller.dart';
import 'package:i9xp_app/app/shared/models/app/app_model.dart';
import 'package:i9xp_app/app/utils/navigators/app_navigator.dart';
import 'package:i9xp_services_pkg/i9xp_services_pkg.dart';
import 'package:i9xp_visual_pkg/i9xp_visual_pkg.dart';

/// Açucar sintático para usar o singleton `AppController()`
///
/// Exemplo:
/// ```dart
/// app.nav.pushNamed(AppRoutes.home);
/// ```
AppController app = AppController();

class AppController {

  /// Navegador de rotas, sem necessidade de context
  /// 
  /// Exemplo:
  /// ```dart
  /// nav.pushNamed(AppRoutes.home);
  /// ```
  AppNavigator _navigator;
  NavigatorState get nav => _navigator.nav;
  GlobalKey<NavigatorState> get navKey => _navigator.navKey;

  AppModel model;
  ServiceController repository;

  AppController._private(){ 
    _navigator = AppNavigator();
    model = AppModel();
    repository = ServiceController(
      products: ProductsRepositoryMockLocal()
    );

    debugPrint('--> AppController initialized.');

    // TODO: remover
    fakeBadgeComMenssagensENotificacoes();
  }
  static AppController _instance = AppController._private();
  factory AppController() => _instance;

  static const List<Widget> _appViews = <Widget>[
    HomeView(title: 'Desafio Mobile'),
    NotImplemented('Hire Me!\n🤜🤛'),
    CartView(),
    NotImplemented(),
    NotImplemented(),
  ];

  Widget get currentView => _appViews[model.viewIndex];

  fakeBadgeComMenssagensENotificacoes(){
    Timer.periodic(Duration(seconds: 2), (timer) {
      if (model.notificationsLength > 99) timer.cancel();
      model.addNotification('notification');

      if (model.notificationsLength.isEven) model.addMessage('message');
    });
  }
}