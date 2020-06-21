import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:i9xp_app/app/shared/models/app/app_model.dart';
import 'package:i9xp_app/app/utils/navigators/app_navigator.dart';

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

  AppController._private(){ 
    
    _navigator = AppNavigator();
    model = AppModel();

    debugPrint('--> AppController initialized.');

    // TODO: remover mocks
    fakeMocks();
  }
  static AppController _instance = AppController._private();
  factory AppController() => _instance;

  fakeMocks(){
    Timer.periodic(Duration(seconds: 2), (timer) {
      if (model.notificationsLength > 99) timer.cancel();
      model.addNotification('notification');

      if (model.notificationsLength.isEven) model.addMessage('message');
    });
  }
}