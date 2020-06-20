import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:i9xp_app/app/pages/home/home_page.dart';
import 'package:i9xp_app/app/pages/product_detail.dart/product_detail_page.dart';

class AppNavigator {

  GlobalKey<NavigatorState> navKey;
  NavigatorState get nav => this.navKey.currentState;

  AppNavigator(){ 
    navKey = GlobalKey<NavigatorState>();
    debugPrint('--> AppNavigator initialized.'); 
  }

}

class AppRouter {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {

      case AppRoutes.home: return MaterialPageRoute(builder: (context) => HomePage(title: settings.arguments.toString(),));
      case AppRoutes.productDetail: return MaterialPageRoute(builder: (context) => ProductDetailPage());

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text('Oops! Página não encontrada: ${settings.name}'),
            ),
          ),
        );
    }
  }
}

class AppRoutes {
  static const String home = 'home';
  static const String productDetail = 'product_detail';
}