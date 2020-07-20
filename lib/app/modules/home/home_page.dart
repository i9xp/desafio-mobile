import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste1/app/modules/products/products_page.dart';

import 'package:teste1/app/modules/shared/product_model.dart';
import 'package:teste1/app/modules/shared/products_list.dart';

import 'package:teste1/app/src/categories_widget.dart';
import 'package:teste1/app/src/highlighted_products.dart';
import 'package:teste1/app/src/highlights_row.dart';
import 'package:teste1/app/src/product_list_widget.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  int navigationBarIndex = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getShoppingCartInStorage();
    //controller.clearCart();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    setState(() {
      navigationBarIndex = 1;
    });
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            actions: [
              Container(
                child: GestureDetector(
                  onTap: () {
                    Modular.to.pushNamed(
                      '/shoppingcart',
                    );
                  },
                  child: Icon(Icons.shopping_cart),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
              ),
              Padding(
                child: GestureDetector(
                  child: Icon(Icons.notifications),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10),
              )
            ],
            leading: Container(
              margin: EdgeInsets.only(left: 10),
              child: Image.asset(
                'images/logo_small.png',
                height: 60,
                width: 60,
              ),
            ),
          ),
          body: SafeArea(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints boxConstraints) {
                return Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CategoriesWidget(),
                      Container(),
                      HighLightsRow(),
                      Observer(
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
                          List<ProductModel> list =
                              controller.productsList.data;

                          return SizedBox(
                            height: 250,
                            child: HighlightedProducts(
                              products: list,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: navigationBarIndex,
            onTap: (index) {
              setState(() {
                navigationBarIndex = index;
              });

              if (index == 0) {
                Modular.to.pushNamed('/favorites/favorites');
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
      },
    );

    //   body: CustomScrollView(
    //     slivers: [
    //       SliverAppBar(
    //         stretch: true,
    //         expandedHeight: 150.0,
    //         flexibleSpace: FlexibleSpaceBar(
    //           centerTitle: true,
    //           title: Text('Produtos disponiveis'),
    //         ),
    //       ),
    //       ProductListWidget(
    //         products: mockedProductList,
    //       )
    //     ],
    //   ),
    // );
  }
}
