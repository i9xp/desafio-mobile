import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:teste1/app/modules/shared/store/carrinho_store.dart';

import 'shopping_cart_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:path_provider/path_provider.dart' as path_provider;
import 'shopping_cart_page.dart';

Future _abrirCaixa() async {
  var dir = await path_provider.getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  return await Hive.openBox('shopping_cart');
}

class ShoppingCartModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ShoppingCartController(i.get<CarrinhoStore>())),
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
                  return ShoppingCartPage();
                }
              } else {
                return Scaffold(
                  body: CircularProgressIndicator(),
                );
              }
            },
          );
        }),
      ];

  static Inject get to => Inject<ShoppingCartModule>.of();
}
