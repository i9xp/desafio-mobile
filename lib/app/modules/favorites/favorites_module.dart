import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:teste1/app/modules/resources/products_repository.dart';
import 'package:teste1/app/modules/resources/products_repository_interface.dart';

import 'favorites_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'favorites_page.dart';

class FavoritesModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FavoritesController(i.get())),
        Bind<IProductsRepository>(
          (i) => ProductsRepository(Firestore.instance),
        )
      ];

  @override
  List<Router> get routers => [
        Router('/:favorites',
            child: (_, args) =>
                FavoritesPage(category: args.params['favorites'])),
      ];

  static Inject get to => Inject<FavoritesModule>.of();
}
