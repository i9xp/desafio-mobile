import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:i9xp_app/app/pages/product_detail.dart/product_detail_page.dart';
import 'package:i9xp_app/app/pages/success.dart/success_page.dart';
import 'package:i9xp_app/app/pages/tab_views/host_view.dart';

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

      case AppRoutes.host: return MaterialPageRoute(builder: (context) => HostView());
      case AppRoutes.productDetail: return MaterialPageRoute(builder: (context) => ProductDetailPage(product: settings.arguments,));
      case AppRoutes.success: return MaterialPageRoute(builder: (context) => SuccessPage());

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
  static const String host = 'host';
  static const String productDetail = 'product_detail';
  static const String success = 'success';
}