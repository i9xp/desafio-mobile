import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:teste1/app/modules/resources/products_repository.dart';
import 'package:teste1/app/modules/resources/products_repository_interface.dart';

import 'products_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'products_page.dart';

class ProductsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProductsController(i.get())),
        Bind<IProductsRepository>(
          (i) => ProductsRepository(Firestore.instance),
        )
      ];

  @override
  List<Router> get routers => [
        Router('/:category',
            child: (_, args) =>
                ProductsPage(category: args.params['category'])),
      ];

  static Inject get to => Inject<ProductsModule>.of();
}
