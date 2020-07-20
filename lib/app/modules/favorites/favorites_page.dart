import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/modules/shared/product_model.dart';
import 'package:teste1/app/src/favorites_list_widget.dart';
import 'package:teste1/app/src/product_list_widget.dart';
import 'favorites_controller.dart';

class FavoritesPage extends StatefulWidget {
  final String title;
  final String category;
  const FavoritesPage({Key key, this.title = "Favorites", this.category})
      : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState
    extends ModularState<FavoritesPage, FavoritesController> {
  //use 'controller' variable to access controller
  int navigationBarIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Observer(
        builder: (_) {
          if (controller.productsList.hasError) {
            print(controller.productsList.error);
            return Center(
              child: RaisedButton(
                onPressed: () {
                  controller.getList();
                },
                child: Text('error'),
              ),
            );
          }
          if (controller.productsList.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          List<ProductModel> list = controller.productsList.data;
          List<Widget> finalProductList = [];
          for (var item in list) {
            if (item.favorite == true) {
              finalProductList.add(
                GestureDetector(
                  onTap: () {
                    Modular.to.pushNamed(
                      '/details',
                      arguments: ProductModel(
                        id: item.id,
                        nome: item.nome,
                        preco: item.preco,
                        url: item.url,
                        ref: item.ref,
                        favorite: item.favorite,
                      ),
                    );
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Column(
                              children: [
                                Image.network(
                                  item.url,
                                  height: 150,
                                ),
                                Text(
                                  item.nome,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                                Center(
                                  child: Text(
                                    'R\$ ${item.preco}',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
          }
          return CustomScrollView(
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.black,
                stretch: true,
                expandedHeight: 150.0,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    'Favoritos',
                  ),
                ),
              ),
              SliverGrid.count(
                crossAxisCount: 2,
                children: finalProductList,
              ),
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navigationBarIndex,
        onTap: (index) {
          setState(() {
            navigationBarIndex = index;
          });

          if (index == 1) {
            Modular.to.pushNamed('/home');
          }
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                size: 40,
                color: Colors.grey,
              ),
              activeIcon: Icon(
                Icons.favorite,
                size: 40,
                color: Colors.yellow[800],
              ),
              title: Text(
                'favoritos',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                ),
              ),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 40,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.home,
              size: 40,
              color: Colors.yellow[800],
            ),
            title: Text(
              'home',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              size: 40,
              color: Colors.grey,
            ),
            activeIcon: Icon(
              Icons.account_circle,
              size: 40,
              color: Colors.yellow[800],
            ),
            title: Text(
              'conta',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
