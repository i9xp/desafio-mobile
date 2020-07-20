import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:hive/hive.dart';
import 'package:teste1/app/modules/shared/product_model.dart';
import 'package:teste1/app/modules/shared/services/local_storage.dart';
import 'shopping_cart_controller.dart';

class ShoppingCartPage extends StatefulWidget {
  final String title;
  const ShoppingCartPage({Key key, this.title = "ShoppingCart"})
      : super(key: key);

  @override
  _ShoppingCartPageState createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState
    extends ModularState<ShoppingCartPage, ShoppingCartController> {
  //use 'controller' variable to access controller
  Box _caixa;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _caixa = Hive.box('shopping_cart');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Carrinho de compras'),
      ),
      body: controller.carrinho.length > 0
          ? Observer(
              builder: (_) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                          itemCount: controller.carrinho.length,
                          itemBuilder: (context, position) {
                            ProductModel actualProduct =
                                controller.carrinho[position].product;
                            return Card(
                              margin: EdgeInsets.all(5),
                              child: ListTile(
                                leading: CircleAvatar(
                                  backgroundImage:
                                      NetworkImage(actualProduct.url),
                                ),
                                title: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '${actualProduct.nome}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            'R\$ ${actualProduct.preco}',
                                            style:
                                                TextStyle(color: Colors.grey),
                                          ),
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        controller.carrinho[position].remover();
                                        LocalStorageService()
                                            .update(controller.carrinho);
                                      },
                                      icon: Icon(
                                        Icons.remove_circle,
                                        color: Colors.red,
                                      ),
                                    ),
                                    Observer(
                                      builder: (_) {
                                        return Text(
                                          '${controller.carrinho[position].quantidade}',
                                          style: TextStyle(color: Colors.grey),
                                        );
                                      },
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        controller.adicionarProdutoNoCarrinho(
                                            controller
                                                .carrinho[position].product);
                                      },
                                      icon: Icon(
                                        Icons.add_circle,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),

                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Total Carrinho'),
                            Observer(
                              builder: (_) {
                                return Text(
                                    'R\$ ${controller.total.toStringAsFixed(2)}');
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          top: 0, right: 20, left: 20, bottom: 40),
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 0),
                        height: 40,
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 4,
                          color: Colors.yellow[700],
                          onPressed: () {},
                          child: Text('Finalizar compra'),
                        ),
                      ),
                    ),
                    // Observer(
                    //   builder: (_) {
                    //     return Expanded(
                    //       child: Text('${controller.total}'),
                    //     );
                    //   },
                    // )
                  ],
                );
              },
            )
          : Center(
              child: Text('voce nao tem produtoss'),
            ),
    );
  }
}
