import 'package:i9xp/app/modules/home/pages/checkout/checkout_page.dart';

import 'pages/checkout/checkout_controller.dart';
import 'services/hive_service.dart';
import 'services/products_service.dart';
import 'pages/cart/cart_controller.dart';
import 'stores/cart_store.dart';
import 'package:i9xp/app/modules/home/pages/product/product_page.dart';

import 'pages/product/product_controller.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CheckoutController()),
        Bind((i) => ProductsService()),
        Bind((i) => CartController()),
        Bind((i) => CartStore(i.get<HiveService>())),
        Bind((i) => ProductController()),
        Bind((i) => HomeController(i.get<ProductsService>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router(
          "/product",
          child: (_, args) => ProductPage(productModel: args.data),
        ),
        Router(
          "/checkout",
          child: (_, args) => CheckoutPage(),
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
