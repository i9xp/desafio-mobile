import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:teste1/app/modules/resources/products_repository.dart';
import 'package:teste1/app/modules/resources/products_repository_interface.dart';
import 'package:teste1/app/modules/shared/store/carrinho_store.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_page.dart';

import 'package:path_provider/path_provider.dart' as path_provider;

Future _abrirCaixa() async {
  var dir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  return await Hive.openBox('shopping_cart');
}

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get(), i.get<CarrinhoStore>())),
        Bind<IProductsRepository>(
          (i) => ProductsRepository(Firestore.instance),
        ),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) {
          return FutureBuilder(
            future: _abrirCaixa(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.error != null) {
                  return Scaffold(
                    body: Center(
                      child: Text('Ops algo deu errado'),
                    ),
                  );
                } else {
                  return HomePage();
                }
              } else {
                return Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              }
            },
          );
        }),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
