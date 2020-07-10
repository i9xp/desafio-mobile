import 'stores/cart_store.dart';
import 'package:i9xp/app/modules/home/pages/product/product_page.dart';

import 'pages/product/product_controller.dart';
import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CartStore()),
        Bind((i) => ProductController()),
        Bind((i) => HomeController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
        Router(
          "/product",
          child: (_, args) => ProductPage(productModel: args.data),
        ),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
