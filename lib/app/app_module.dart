import 'package:teste1/app/modules/details_page/details_page_module.dart';
import 'package:teste1/app/modules/favorites/favorites_module.dart';
import 'package:teste1/app/modules/products/products_module.dart';
import 'package:teste1/app/modules/shared/store/carrinho_store.dart';
import 'package:teste1/app/modules/shopping_cart/shopping_cart_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:teste1/app/app_widget.dart';
import 'package:teste1/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => CarrinhoStore()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
        Router('/home', module: HomeModule()),
        Router('/products', module: ProductsModule()),
        Router('/details', module: DetailsPageModule()),
        Router('/shoppingcart', module: ShoppingCartModule()),
        Router('/favorites', module: FavoritesModule())
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
