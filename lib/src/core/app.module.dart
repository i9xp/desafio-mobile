import 'package:desafioi9xp/src/core/views/main.view.dart';
import 'package:desafioi9xp/src/modules/cart/controllers/cart.controller.dart';
import 'package:desafioi9xp/src/modules/cart/repositories/cart.repository.dart';
import 'package:desafioi9xp/src/modules/cart/stores/cart.store.dart';
import 'package:desafioi9xp/src/modules/dashboard/controllers/dashboard.controller.dart';
import 'package:desafioi9xp/src/modules/dashboard/repositories/dashboard.repository.dart';
import 'package:desafioi9xp/src/modules/dashboard/stores/dashboard.store.dart';
import 'package:desafioi9xp/src/modules/dashboard/views/dashboard.view.dart';
import 'package:desafioi9xp/src/modules/home/controllers/home.controller.dart';
import 'package:desafioi9xp/src/modules/home/stores/home.store.dart';
import 'package:desafioi9xp/src/modules/home/views/home.view.dart';
import 'package:desafioi9xp/src/modules/product/controllers/product.controller.dart';
import 'package:desafioi9xp/src/modules/product/views/product.view.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        //Cart Module
        Bind((i) => CartController(i.get())),
        Bind((i) => CartStore(i.get())),
        Bind((i) => CartRepository()),

        //Home Module
        Bind((i) => HomeController(i.get())),
        Bind((i) => HomeStore()),

        //Dashboard Module
        Bind((i) => DashboardController(i.get())),
        Bind((i) => DashboardStore(i.get())),
        Bind((i) => DashboardRepository()),

        //Product Module
        Bind((i) => ProductController()),
      ];

  @override
  // TODO: implement bootstrap
  Widget get bootstrap => MyAppView();

  @override
  // TODO: implement routersx
  List<Router> get routers => [
        Router("/", child: (_, __) => HomeView()),
        Router("/home", child: (_, __) => DashboardView()),
        Router("/cart", child: (_, __) => DashboardView()),
        Router("/cart/success", child: (_, __) => DashboardView()),
        Router("/product", child: (_, args) => ProductView(product: args.data)),
      ];
}
