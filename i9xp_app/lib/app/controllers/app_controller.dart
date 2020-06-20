import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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

  AppController._private(){ 
    _navigator = AppNavigator();
    debugPrint('--> AppController initialized.'); 
  }
  static AppController _instance = AppController._private();
  factory AppController() => _instance;
}